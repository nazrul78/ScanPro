import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:get/get.dart';
import 'package:scan_pro/src/helpers/k_log.dart';

class ImagesController extends GetxController {
  final pictures = RxList<String>([]);

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
}
