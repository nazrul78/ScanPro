import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:get/get.dart';
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

  void addImagesInList({required List<String> imgPathList}) async {
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
}
