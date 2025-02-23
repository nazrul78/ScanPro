import 'package:scan_pro/src/controllers/config_controller.dart';
import 'package:scan_pro/src/controllers/images_controller.dart';
import 'package:scan_pro/src/controllers/local_storage_controller.dart';
import 'package:scan_pro/src/controllers/main_page_controller.dart';
import 'package:scan_pro/src/service/Isar_service.dart';

class Base {
  Base._();
  static final configController = ConfigController();
  static final mainPageController = MainPageController();
  static final imagesController = ImagesController();
  static final localStorageController = LocalStorageController();
  static final isarService = IsarService();
}
