import 'package:get/get.dart';
import 'package:scan_pro/src/base/base.dart';
import 'package:scan_pro/src/helpers/navigations.dart';
import 'package:scan_pro/src/pages/main_page.dart';

class ConfigController extends GetxController {
  @override
  void onInit() async {
    await initAppConfig();
    super.onInit();
  }

  @override
  void onReady() async {
    await 2.delay();

    offAll(MainPage());

    // await Base.locationController.enableLocationService();
    // await Base.locationController.enableLocationPermission();
    // await Base.locationController.locationListener();

    // if (Base.authController.isUserLoggedin()) {
    //   offAll(HomePage());
    // } else {
    //   offAll(LoginPage());
    // }

    super.onReady();
  }

  Future<void> initAppConfig() async {
    /// ====> Isar and others config <===
    await Base.isarService.isarInit();

    /// To initialize the Shared Preferences
    // SiteSurveySharedPreferences.initializePrefs();
  }
}
