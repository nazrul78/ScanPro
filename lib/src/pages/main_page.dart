import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scan_pro/src/base/base.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // List<String> _pictures = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScanPro'),
      ),
      body: Obx(
        () => SingleChildScrollView(
            child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  final pics = await Base.imagesController.scanDocuments();
                  if (pics != null && pics.isNotEmpty) {
                    Base.imagesController.pictures.value = pics;
                  }
                },
                child: const Text("Add Pictures")),
            for (var picture in Base.imagesController.pictures)
              Image.file(File(picture))
          ],
        )),
      ),
    );
  }
}
