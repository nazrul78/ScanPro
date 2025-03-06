import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scan_pro/src/base/base.dart';
import 'package:scan_pro/src/config/app_theme.dart';
import 'package:scan_pro/src/helpers/k_log.dart';
import 'package:scan_pro/src/helpers/utility.dart';
import 'package:scan_pro/src/pages/image_view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Expanded(
            flex: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        color: AppTheme.appThemeColor,
                        // color: Colors.blueGrey,
                        height: 110,
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
                                  'Import Images',
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
                  // ElevatedButton(
                  //     onPressed: () async {
                  //       final pics =
                  //           await Base.imagesController.scanDocuments();
                  //       if (pics != null && pics.isNotEmpty) {
                  //         Base.imagesController.pictures.value = pics;
                  //       }
                  //     },
                  //     child: const Text("Add Pictures")),
                  /*   for (var picture in Base.imagesController.pictures)
                    Image.file(File(picture)), */
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // height: 500,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: AppTheme.appThemeColor2,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recents',
                        style: TextStyle(
                            color: AppTheme.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 12,
                          )
                        ],
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),

                  SizedBox(
                    height: Get.height - 234,
                    child: ListView.builder(
                        // padding: const EdgeInsets.all(8),
                        itemCount: Base.imagesController.imgList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          final item = Base.imagesController.imgList[index];
                          return Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(5),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image(
                                      width: 50,
                                      fit: BoxFit.fill,
                                      image: FileImage(
                                          File(item.images!.first.imagePath!))),
                                ),

                                // Container(
                                //   height: 50,
                                //   width: 50,

                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(5),
                                //     color: Colors.lightBlueAccent,
                                //   ),
                                // ),
                                title: Text(
                                  //'ScanPro 29-01-2025',
                                  item.name!,
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  // '2025-01-29 14:13',
                                  Utility.formatDateTimeIn12Hour(
                                      item.dateTime!)!,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                trailing: InkWell(
                                    onTap: () async {
                                      await Base.imagesController
                                          .deleteImage(item);
                                      // await Base.isarService
                                      //     .imgDataDeleteFromIsarDB(item.id!);
                                      klog('Delete imgId ${item.imgId}');
                                      klog('Delete Id ${item.id}');
                                    },
                                    child: Icon(Icons.delete,
                                        color: Colors.grey[700])),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 35,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[800]),
                                      onPressed: () {},
                                      child: Text('Share',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[800]),
                                      onPressed: () async {
                                        klog('Pressed PDF');
                                        klog(
                                            'Image path ${item.images!.first.imagePath}');
                                        final pdfPath = await Base
                                            .imagesController
                                            .generatePDFWithImage(
                                                item.images!.first.imagePath!);
                                        await Base.imagesController
                                            .openGeneratedPDF(pdfPath!);
                                        // Get.to(PdfViewPage());
                                      },
                                      child: Text('To PDF',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[800]),
                                      onPressed: () {
                                        Get.to(ImageViewPage(
                                            pictures: item.images!));
                                      },
                                      child: Text('View',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  // TextButton(
                                  //   style: TextButton.styleFrom(
                                  //     foregroundColor: Colors.red,
                                  //   ),
                                  //   onPressed: () {},
                                  //   child: Text('TextButton svs'),
                                  // )
                                ],
                              ),
                              SizedBox(height: 10),
                              if (index + 1 !=
                                  Base.imagesController.imgList.length)
                                Divider(
                                  // height: 10,
                                  thickness: 1,
                                  color: Colors.blueGrey[800],
                                  indent: 5,
                                  endIndent: 5,
                                ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
