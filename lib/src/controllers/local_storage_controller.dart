import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorageController extends GetxController {
  Future<Directory> getAppDir() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    return appDocDir;
  }
}
