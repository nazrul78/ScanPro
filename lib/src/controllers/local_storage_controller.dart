import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';

import 'package:path_provider/path_provider.dart';

class LocalStorageController extends GetxController {
  Future<Directory> getAppDir() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    return appDocDir;
  }

  /// To save the file in App dir
  Future<String> saveFileInAppDir(
      {required String filePath,
      required String dPath,
      required String extention}) async {
    final byte = File(filePath).readAsBytesSync();

    final dirPath = await Directory(
            '${(await getApplicationDocumentsDirectory()).path}$dPath')
        .exists();

    if (dirPath) {
      final f = File(
          '${(await getApplicationDocumentsDirectory()).path}$dPath/${DateTime.now().microsecondsSinceEpoch}$extention');
      final fPath = await f.writeAsBytes(byte);

      await getFileList(dPath: dPath);

      return fPath.path;
    } else {
      final res = await Directory(
              '${(await getApplicationDocumentsDirectory()).path}$dPath')
          .create();
      final f =
          File('${res.path}/${DateTime.now().microsecondsSinceEpoch}.jpg');
      final fPath = await f.writeAsBytes(byte);
      await getFileList(dPath: dPath);
      return fPath.path;
    }
  }

  ///To get the files from App dir
  Future<void> getFileList({required String dPath}) async {
    final rrr =
        Directory('${(await getApplicationDocumentsDirectory()).path}$dPath')
            .listSync();
    log('${rrr.length}');
    for (var element in rrr) {
      log(element.path);
    }
  }

/*   Future<void> saveFileInAppDir(String filePath) async {
    final String filep;
    final dir = await Base.localStorageController.getAppDir();

    // Uint8List byte

    final byte = File(filePath).readAsBytesSync();

    // final xFile = XFile(filePath);

    final dirPath = await Directory('${dir.path}/images').exists();

    if (dirPath) {
      log(dirPath.toString());
      // await xFile.saveTo(
      //     '${dir.path}/images/${DateTime.now().microsecondsSinceEpoch}.png');
      final f = File(
          '${dir.path}/images/${DateTime.now().microsecondsSinceEpoch}.jpg');
      final r = await f.writeAsBytes(byte);
      final rrr = Directory('${dir.path}/images').listSync();
      log('${await rrr.length}' + 'lenght');
      for (var element in rrr) {
        log('${element.path}' + 'filePath');
      }
    } else {
      final res = await Directory('${dir.path}/images').create();
      final f =
          File('${res.path}/${DateTime.now().microsecondsSinceEpoch}.jpg');
      final r = await f.writeAsBytes(byte);

      final rrr = Directory('${dir.path}/images').list();

      log('${await rrr.length}' + 'lenght');
      log('${rrr.first}' + 'file');
      // final filePath = Directory('$getAppDir/images/${file.path}').path;
      // final filePath = await xFile
      //     .saveTo('${res.path}/${DateTime.now().microsecondsSinceEpoch}.png');
    }
  } */
}
