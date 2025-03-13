import 'package:flutter/material.dart';
import 'package:scan_pro/src/config/app_theme.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appThemeColor,
      // body: Center(
      //   child: Text(
      //     'Document Page',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: ListView.builder(
          padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
          physics: ScrollPhysics(parent: BouncingScrollPhysics()),
          // itemCount: Base.imagesController.imgList.length,
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            //  final item = Base.imagesController.imgList[index];
            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(5),
                  leading: Icon(
                    Icons.picture_as_pdf_rounded,
                    size: 40,
                    color: Colors.redAccent,
                  ),

                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(5),
                  //   child: Image(
                  //       width: 50,
                  //       fit: BoxFit.fill,
                  //       image: FileImage(File(item.images!.first.imagePath!))),
                  // ),

                  // Container(
                  //   height: 50,
                  //   width: 50,

                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5),
                  //     color: Colors.lightBlueAccent,
                  //   ),
                  // ),
                  title: Text(
                    'ScanPro 29-01-2025',
                    // item.name!,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '2025-01-29 14:13',
                    //  Utility.formatDateTimeIn12Hour(item.dateTime!)!,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  trailing: InkWell(
                      onTap: () async {
                        // await Base.imagesController.deleteImage(item);
                        // // await Base.isarService
                        // //     .imgDataDeleteFromIsarDB(item.id!);
                        // klog('Delete imgId ${item.imgId}');
                        // klog('Delete Id ${item.id}');
                      },
                      child: Icon(Icons.delete, color: Colors.grey[700])),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[800]),
                        onPressed: () {},
                        child: Text('Share',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[800]),
                        onPressed: () async {
                          // klog('Pressed PDF');
                          // klog('Image path ${item.images!.first.imagePath}');
                          // // final pdfPath = await Base
                          // //     .imagesController
                          // //     .generatePDFWithImage(item.images!);
                          // final pdfPath = await Base.imagesController
                          //     .addPDFInList(imgInfoList: item.images!);

                          // await Base.imagesController
                          //     .openGeneratedPDF(pdfPath!);
                          // // Get.to(PdfViewPage());
                        },
                        child: Text('To PDF',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[800]),
                        onPressed: () {
                          //  Get.to(ImageViewPage(pictures: item.images!));
                        },
                        child:
                            Text('View', style: TextStyle(color: Colors.white)),
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
                // if (index + 1 != Base.imagesController.imgList.length)
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
    );
  }
}
