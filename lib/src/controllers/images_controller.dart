import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:get/get.dart';
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

  void addImagesInList({required List<String> imgPathList}) {
    final List<ImageInfoModel> imgs = [];

    for (var item in imgPathList) {
      final img = ImageInfoModel(
        id: getUniqueId(),
        imgName: 'ScanPro ${DateTime.now()}',
        dateTime: DateTime.now(),
        imagePath: item,
      );
      imgs.add(img);
    }

    klog(imgs.length);

    final images = ImagesModel(
      id: getUniqueId(),
      name: 'ScanPro ${DateTime.now()}',
      images: imgs,
      dateTime: DateTime.now(),
    );

    imgList.add(images);
    klog(imgList.length);

    // final img = ImageInfoModel(
    //   id: getUniqueId(),
    //   imgName: 'ScanPro ${DateTime.now()}',
    //   dateTime: DateTime.now(),
    //   imagePath: imgPath,
    // );
    // imgList.add(img);
  }
}
