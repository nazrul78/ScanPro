import 'package:isar/isar.dart';

part 'pdf_info_model.g.dart';

@collection
class PdfInfoModel {
  Id? id;
  String? pdfId;
  String? pdfName;
  String? pdfPath;
  DateTime? dateTime;

  PdfInfoModel({
    this.pdfId,
    this.pdfName,
    this.pdfPath,
    this.dateTime,
  });
}
