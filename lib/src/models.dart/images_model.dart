import 'package:isar/isar.dart';
import 'package:scan_pro/src/models.dart/image_info_model.dart';

part 'images_model.g.dart';

@collection
class ImagesModel {
  Id? id;
  String? imgId;
  String? name;
  List<ImageInfoModel>? images;
  DateTime? dateTime;

  ImagesModel({
    this.imgId,
    this.name,
    this.images,
    this.dateTime,
  });
}
