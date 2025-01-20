import 'package:scan_pro/src/controllers/controllers/config_controller.dart';
import 'package:scan_pro/src/controllers/controllers/home_page_controller.dart';

class Base {
  Base._();
  static final configController = ConfigController();
  static final himeController = HomePageController();
}
