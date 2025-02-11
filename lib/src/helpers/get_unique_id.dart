import 'package:uuid/uuid.dart';

String getUniqueId() {
  String uniqueId = Uuid().v1();
  return uniqueId;
}
