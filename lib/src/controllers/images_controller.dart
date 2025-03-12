import 'dart:io';
import 'dart:typed_data';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:scan_pro/src/base/base.dart';
import 'package:scan_pro/src/helpers/get_unique_id.dart';
import 'package:scan_pro/src/helpers/k_log.dart';
import 'package:scan_pro/src/models.dart/image_info_model.dart';
import 'package:scan_pro/src/models.dart/images_model.dart';

class ImagesController extends GetxController {
  final pictures = RxList<String>([]);
  final imgList = RxList<ImagesModel>([]);
  // final imgList = RxList<ImageInfoModel>([]);

  /// To scan the documents.
  Future<List<String>?> scanDocuments() async {
    try {
      final pictures = await CunningDocumentScanner.getPictures(
            isGalleryImportAllowed: true,
            //  noOfPages: 1

            /*      iosScannerOptions: IosScannerOptions(
              imageFormat: IosImageFormat.jpg,
              jpgCompressionQuality: 0.5,
            ) */
          ) ??
          [];

      return pictures;
    } catch (exception) {
      klog(exception);
      return [];
      // Handle exception here
    }
  }

  Future<List<ImageInfoModel>> addImagesInList(
      {required List<String> imgPathList}) async {
    final List<ImageInfoModel> imgs = [];

    for (var item in imgPathList) {
      final img = ImageInfoModel(
        id: getUniqueId(),
        imgName: 'ScanPro ${DateTime.now().microsecondsSinceEpoch}',
        dateTime: DateTime.now(),
        imagePath: await Base.localStorageController.saveFileInAppDir(
            filePath: item, dPath: '/images', extention: '.jpg'),
      );
      imgs.add(img);
    }

    klog(imgs.length);

    final images = ImagesModel(
      imgId: getUniqueId(),
      name: 'ScanPro ${DateTime.now().microsecondsSinceEpoch}',
      images: imgs,
      dateTime: DateTime.now(),
    );

    imgList.add(images);

    await Base.isarService.imgDataPutInIsarDB(images);
    klog(imgList.length);

    return imgs;

    // final img = ImageInfoModel(
    //   id: getUniqueId(),
    //   imgName: 'ScanPro ${DateTime.now()}',
    //   dateTime: DateTime.now(),
    //   imagePath: imgPath,
    // );
    // imgList.add(img);
  }

  /// Delete Image.
  Future<void> deleteImage(ImagesModel img) async {
    //Image delete from Isar DB.
    await Base.isarService.imgDataDeleteFromIsarDB(img.id!);
    //Image delete from RXList.
    Base.imagesController.imgList.remove(img);
    //Image delete from App Dir.
    for (var item in img.images!) {
      await Base.localStorageController
          .fileDeleteFromAppDir(filePath: item.imagePath!);
    }
  }

  /// To generate PDF
  Future<String?> generatePDFWithImage(List<ImageInfoModel> imgInfo) async {
    final pdf = pw.Document();

    // Get the image file from the app directory
    // final directory = await getApplicationDocumentsDirectory();
    // final imagePath = File('${directory.path}/my_image.jpg');
    // final imagePath = File(imgPath);

    // if (!await imagePath.exists()) {
    //   klog("Image not found!");
    //   return null;
    // }

    for (var item in imgInfo) {
      final imagePath = File(item.imagePath!);

      // Convert image to bytes
      final Uint8List imageBytes = await imagePath.readAsBytes();
      final pw.MemoryImage pdfImage = pw.MemoryImage(imageBytes);

      // Add image to PDF
      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Center(
              child: pw.Image(pdfImage), // Adding image to PDF
            );
          },
        ),
      );
    }

    // Save PDF to file
    // final pdfFile = File('${directory.path}/generated.pdf');
    // final pdfFile = File(
    //     '${directory.path}/ScanPro ${DateTime.now().microsecondsSinceEpoch}.pdf');
    // await pdfFile.writeAsBytes(await pdf.save());

    // await Base.localStorageController.saveFileInAppDir(
    //         filePath: item, dPath: '/images', extention: '.jpg'),
    final pdfFile = await Base.localStorageController
        .savePdfFileInAppDir(pdf: pdf, dPath: '/PDF', extention: '.pdf');

    klog("PDF saved at: $pdfFile");

    return pdfFile;
  }

  /// To open the PDF file
  Future<void> openGeneratedPDF(String pdfFilePath) async {
    // final directory = await getApplicationDocumentsDirectory();
    // final pdfFile = File('${directory.path}/generated.pdf');
    final pdfFile = File(pdfFilePath);
    await OpenFile.open(
        pdfFile.path); // Opens the file using a default PDF viewer
  }
}
