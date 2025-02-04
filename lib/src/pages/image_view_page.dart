import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scan_pro/src/base/base.dart';
import 'package:scan_pro/src/config/app_theme.dart';

class ImageViewPage extends StatelessWidget {
  const ImageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appThemeColor,
      appBar: AppBar(
        backgroundColor: AppTheme.appThemeColor,
        foregroundColor: Colors.white,
        leading: Icon(
          Icons.clear,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.save)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          // ElevatedButton(
          //   style:
          //       ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[800]),
          //   onPressed: () {},
          //   child: Text('Save', style: TextStyle(color: Colors.white)),
          // ),
          // ElevatedButton(
          //   style:
          //       ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[800]),
          //   onPressed: () {},
          //   child: Text('Share', style: TextStyle(color: Colors.white)),
          // ),
        ],
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: AppTheme.appThemeColor,
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(Base.imagesController.pictures[0]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
