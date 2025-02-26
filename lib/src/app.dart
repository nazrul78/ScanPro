import 'package:flutter/material.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:scan_pro/src/base/BaseBindings.dart';
import 'package:scan_pro/src/config/app_config.dart';
import 'package:scan_pro/src/pages/splash_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppConfig.themeData,
      smartManagement: SmartManagement.onlyBuilder,
      initialBinding: BaseBindings(),
      home: SplashPage(),
    );
  }
}
