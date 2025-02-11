import 'package:scan_pro/src/models.dart/image_info_model.dart';

class ImagesModel {
  String? id;
  String? name;
  List<ImageInfoModel>? images;
  DateTime? dateTime;

  ImagesModel({
    this.id,
    this.name,
    this.images,
    this.dateTime,
  });
}
