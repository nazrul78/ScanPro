import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scan_pro/src/base/base.dart';
import 'package:scan_pro/src/helpers/utility.dart';
import 'package:scan_pro/src/pages/document_page.dart';
import 'package:scan_pro/src/pages/home_page.dart';
import 'package:scan_pro/src/pages/image_view_page.dart';
import 'package:scan_pro/src/pages/person_page.dart';
import '../config/app_theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppTheme.appThemeColor,
        body: Base.mainPageController.currentPageIndex.value == 0
            ? HomePage()
            : Base.mainPageController.currentPageIndex.value == 1
                ? DocumentPage()
                : PersonPage(),
        floatingActionButton: Base.mainPageController.currentPageIndex.value ==
                0
            ? FloatingActionButton(
                onPressed: () async {
                  final pics = await Base.imagesController.scanDocuments();
                  if (pics != null && pics.isNotEmpty) {
                    Base.imagesController.pictures.value = pics;

                    log('$pics');

                    Base.imagesController.addImagesInList(imgPathList: pics);

                    Get.to(ImageViewPage(pictures: pics));
                  }
                },
                // foregroundColor: customizations[index].$1,
                // backgroundColor: customizations[index].$2,
                // shape: customizations[index].$3,
                backgroundColor: Colors.teal,
                child: const Icon(
                  Icons.camera_alt,
                  size: 35,
                  color: Colors.white,
                ),
              )
            : null,
        bottomNavigationBar: Obx(
          () => NavigationBar(
            onDestinationSelected: (int index) async {
              if (index == 0) {
                Base.mainPageController.currentPageIndex.value = index;
                log('${Base.mainPageController.currentPageIndex.value}');
                // setState(() {
                //   currentPageIndex = index;
                // });

                log('message');

                final dir = await Base.localStorageController.getAppDir();
                log('${dir}' + '@@@@@@@');
                log('ScanPro ${DateTime.now()}' + '@@@@@@@');

                log('${Utility.formatDateTimeIn12Hour(DateTime.now())}');

                // final fileLoc = await dir.create();
                // log('${dir.path}/images');

                //  final res = await Directory('${dir.path}/images').create();

                //log('$res' + 'Created file path');

                final val = await Directory('${dir.path}/images').exists();

                log('$val');

                final r = Directory('${dir.path}/images').list();
                log('${await r.length}' + 'lenght');
              } else if (index == 1) {
                await Base.isarService.isarInit();
              } else if (index == 2) {
                // await Base.isarService.isarPutTest();
                await Base.isarService.isarGetTest();
              }
            },
            indicatorColor: Colors.teal,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            // surfaceTintColor: Colors.amber,

            backgroundColor: AppTheme.appThemeColor,

            height: 50,
            // selectedIndex: currentPageIndex,
            selectedIndex: Base.mainPageController.currentPageIndex.value,
            destinations: const <Widget>[
              NavigationDestination(
                // selectedIcon: Icon(Icons.home),
                icon: Icon(
                  Icons.home,
                  //color: Colors.white,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.edit_document),
                label: 'Notifications',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                // icon: Badge(
                //   label: Text('2'),
                //   child: Icon(Icons.messenger_sharp),
                // ),
                label: 'Messages',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
