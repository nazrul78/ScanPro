import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:scan_pro/src/config/app_theme.dart';
import 'package:scan_pro/src/controllers/config_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // Base.configController;
    Get.put(ConfigController());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Colors.grey,
      body: Container(
        color: AppTheme.appThemeColor,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
            size: 60,
          ),
        ),
      ),

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: const [
      //       CircularProgressIndicator(),
      //       SizedBox(height: 20),
      //       Text('Welcome'),
      //     ],
      //   ),
      // ),
    );
  }
}
