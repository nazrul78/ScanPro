import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:scan_pro/src/config/app_theme.dart';
import 'package:scan_pro/src/models.dart/image_info_model.dart';

class ImageViewPage extends StatelessWidget {
  // late List<String> pictures;
  const ImageViewPage({super.key, required this.pictures});

  final List<ImageInfoModel> pictures;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appThemeColor,
      appBar: AppBar(
        backgroundColor: AppTheme.appThemeColor,
        foregroundColor: Colors.white,
        title: Text('ScanPro 30-01-2025'),
        // leading: Icon(
        //   Icons.clear,
        //   color: Colors.white,
        //   size: 30,
        // ),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.save)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        //   // ElevatedButton(
        //   //   style:
        //   //       ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[800]),
        //   //   onPressed: () {},
        //   //   child: Text('Save', style: TextStyle(color: Colors.white)),
        //   // ),
        //   // ElevatedButton(
        //   //   style:
        //   //       ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey[800]),
        //   //   onPressed: () {},
        //   //   child: Text('Share', style: TextStyle(color: Colors.white)),
        //   // ),
        // ],
      ),
      /*      body: Container(
        // height: Get.height,
        // width: Get.width,
        color: AppTheme.appThemeColor,
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(Base.imagesController.pictures[0]),
            fit: BoxFit.cover,
          ),
        ),
      ), */
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: pictures.length,
        itemBuilder: (BuildContext context, int index) {
          final item = pictures[index];
          return SizedBox(
            height: 500,

            //child: Image.file(File(pictures[index]))
            //color: Colors.amber,
            // child: Center(child: Text('Entry /* ${pictures[index]} */')),
            child: PhotoView(
              backgroundDecoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey, width: 1)),
              //imageProvider: AssetImage("assets/large-image.jpg"),
              // imageProvider: AssetImage(pictures[0]),
              imageProvider: FileImage(File(item.imagePath!)),
              // imageProvider: NetworkImage(
              //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoFRQjM-wM_nXMA03AGDXgJK3VeX7vtD3ctA&s'),
              // imageProvider: AssetImage(Base.imagesController.pictures.first),
              initialScale: PhotoViewComputedScale.contained * 0.8,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 0,
          color: Colors.transparent,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          // Base.mainPageController.currentPageIndex.value = index;
          // log('${Base.mainPageController.currentPageIndex.value}');
          // setState(() {
          //   currentPageIndex = index;
          // });
        },
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        // surfaceTintColor: Colors.amber,

        backgroundColor: AppTheme.appThemeColor,

        height: 50,
        // selectedIndex: currentPageIndex,
        // selectedIndex: Base.mainPageController.currentPageIndex.value,
        destinations: const <Widget>[
          NavigationDestination(
            // selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.save,
              //color: Colors.white,
            ),
            label: 'Save',
          ),
          NavigationDestination(
            icon: Icon(Icons.picture_as_pdf),
            label: 'PDF',
          ),
          NavigationDestination(
            icon: Icon(Icons.share),
            // icon: Badge(
            //   label: Text('2'),
            //   child: Icon(Icons.messenger_sharp),
            // ),
            label: 'Share',
          ),
          // NavigationDestination(
          //   icon: Icon(Icons.share),
          //   // icon: Badge(
          //   //   label: Text('2'),
          //   //   child: Icon(Icons.messenger_sharp),
          //   // ),
          //   label: 'Share',
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.share),
          //   // icon: Badge(
          //   //   label: Text('2'),
          //   //   child: Icon(Icons.messenger_sharp),
          //   // ),
          //   label: 'Share',
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.share),
          //   // icon: Badge(
          //   //   label: Text('2'),
          //   //   child: Icon(Icons.messenger_sharp),
          //   // ),
          //   label: 'Share',
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.share),
          //   // icon: Badge(
          //   //   label: Text('2'),
          //   //   child: Icon(Icons.messenger_sharp),
          //   // ),
          //   label: 'Share',
          // ),
          // NavigationDestination(
          //   icon: Icon(Icons.share),
          //   // icon: Badge(
          //   //   label: Text('2'),
          //   //   child: Icon(Icons.messenger_sharp),
          //   // ),
          //   label: 'Share',
          // ),
        ],
      ),
    );
  }
}
