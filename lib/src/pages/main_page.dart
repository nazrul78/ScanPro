import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scan_pro/src/base/base.dart';

import '../config/app_theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // List<String> _pictures = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appThemeColor,
      // appBar: AppBar(
      //   title: const Text('ScanPro'),
      // ),
      body: Obx(
        () => Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        color: AppTheme.appThemeColor,
                        // color: Colors.blueGrey,
                        height: 150,
                        child: GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          children: <Widget>[
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  child: Container(
                                    padding: EdgeInsets.all(1),
                                    color: AppTheme.appThemeColor2,
                                    //  color: Colors.blueGrey[400],
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Container(
                                        //margin: EdgeInsets.all(3),
                                        padding: EdgeInsets.all(10),
                                        // color: Colors.blueGrey,
                                        color: AppTheme.appThemeColor,
                                        child: Icon(
                                          Icons.document_scanner_outlined,
                                          size: 30,
                                          color: Colors.tealAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                const Text(
                                  'Smart Scan',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  child: Container(
                                    padding: EdgeInsets.all(1),
                                    color: AppTheme.appThemeColor2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Container(
                                        //margin: EdgeInsets.all(3),
                                        padding: EdgeInsets.all(10),
                                        color: AppTheme.appThemeColor,
                                        child: Icon(
                                          Icons.picture_as_pdf_outlined,
                                          size: 30,
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                const Text(
                                  'PDF Tools',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                  child: Container(
                                    padding: EdgeInsets.all(1),
                                    color: AppTheme.appThemeColor2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Container(
                                        //margin: EdgeInsets.all(3),
                                        padding: EdgeInsets.all(10),
                                        color: AppTheme.appThemeColor,
                                        child: Icon(
                                          Icons.photo_camera_back,
                                          size: 30,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                const Text(
                                  'Smart Scan',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  /// >>>>>>>>>>>>>>>>>>>> END <<<<<<<<<<<<<<<<<<
                  ElevatedButton(
                      onPressed: () async {
                        final pics =
                            await Base.imagesController.scanDocuments();
                        if (pics != null && pics.isNotEmpty) {
                          Base.imagesController.pictures.value = pics;
                        }
                      },
                      child: const Text("Add Pictures")),
                  for (var picture in Base.imagesController.pictures)
                    Image.file(File(picture)),
                ],
              ),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  color: AppTheme.appThemeColor2,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            )
          ],
        ),
      ),
    );
  }
}
