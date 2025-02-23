import 'package:get/get.dart';
import 'package:scan_pro/src/controllers/config_controller.dart';
import 'package:scan_pro/src/controllers/images_controller.dart';
import 'package:scan_pro/src/controllers/local_storage_controller.dart';
import 'package:scan_pro/src/controllers/main_page_controller.dart';
import 'package:scan_pro/src/service/Isar_service.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    // ***Controllers***
    Get.lazyPut(() => ConfigController());
    Get.lazyPut(() => MainPageController());
    Get.lazyPut(() => ImagesController());
    Get.lazyPut(() => LocalStorageController());
    Get.lazyPut(() => IsarService());
  }
}
