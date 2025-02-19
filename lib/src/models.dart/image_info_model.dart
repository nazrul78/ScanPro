import 'package:isar/isar.dart';

part 'image_info_model.g.dart';

@embedded
class ImageInfoModel {
  String? id;
  String? imgName;
  String? imagePath;
  DateTime? dateTime;

  ImageInfoModel({
    this.id,
    this.imgName,
    this.imagePath,
    this.dateTime,
  });
}
