import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:scan_pro/src/helpers/k_log.dart';
import 'package:scan_pro/src/helpers/kerror.dart';
import 'package:scan_pro/src/models.dart/user.dart';

class IsarService extends GetxService {
  late Isar isar;

  @override
  void onInit() async {
    await init();
    super.onInit();
  }

  /// List of collection schemas used in the Isar database
  final List<CollectionSchema<Object>> schemaList = [
    UserSchema,
    // TvDetailsModelSchema,
    // PlaylistsModelSchema,
    // DownloadModelSchema,
    // SettingsModelSchema,
  ];

  /// Stream to watch changes in the `DownloadModel` collection
  // Stream<DownloadModel?> get watchDownload => isar.downloadModels
  //     .watchObject(hashId(IsarKeys.download), fireImmediately: true);

  /// Initializes the Isar database
  /// Returns `true` if initialization is successful, otherwise `false`
  Future<bool> init() async {
    try {
      isar = await Isar.open(
        directory: (await getApplicationSupportDirectory()).path,
        schemaList,
        inspector: true,
      );

      klog('Isar DB Initialized');
      return true;
    } catch (e) {
      kerror(e);
      return false;
    }
  }

  /// Closes the Isar database
  /// Returns `true` if closed successfully, otherwise `false`
  Future<bool> close() async {
    try {
      klog('Isar DB Closed');
      return isar.close();
    } catch (e) {
      kerror(e);
      return false;
    }
  }

  /// Retrieves a single object of type `T` from the collection by `id`
  Future<T?> get<T>(String id) async => isar.writeTxn(
        () async => await isar.collection<T>().get(hashId(id)),
      );

  /// Retrieves all objects of type `T` from the collection with optional pagination
  Future<List<T>> getAll<T>({int? skip = 0, int? limit}) async => isar.writeTxn(
        () async => await isar
            .collection<T>()
            .where()
            .offset(skip ?? 0)
            .limit(limit ?? 18)
            .findAll(),
      );

  /// Inserts or updates a single object of type `T` in the collection
  /// Returns the ID of the inserted/updated object
  Future<int> put<T>(T data) async =>
      isar.writeTxn(() async => await isar.collection<T>().put(data));

  /// Inserts or updates multiple objects of type `T` in the collection
  /// Returns a list of IDs of the inserted/updated objects
  Future<List<int>> putAll<T>(List<T> data) async =>
      isar.writeTxn(() async => await isar.collection<T>().putAll(data));

  /// Deletes an object of type `T` from the collection by `id`
  /// Returns `true` if the object was deleted successfully, otherwise `false`
  Future<bool> delete<T>(String id) async =>
      isar.writeTxn(() async => await isar.collection<T>().delete(hashId(id)));

  /// Deletes all objects from the collection of type `T`
  Future<void> deleteCollection<T>() async =>
      isar.writeTxn(() async => await isar.collection<T>().clear());

  /// Checks if an object with the given `id` exists in the collection of type `T`
  /// Returns `true` if the object exists, otherwise `false`
  Future<bool> contain<T>(String id) async => isar.writeTxn(() async =>
      (await isar.collection<T>().get(hashId(id)) != null ? true : false));

  /// Checks if the collection of type `T` is empty
  /// Returns `true` if empty, otherwise `false`
  Future<bool> isEmpty<T>() async => isar.writeTxn(
        () async => (await isar.collection<T>().count()) > 0 ? false : true,
      );

  /// Returns the total number of objects in the collection of type `T`
  Future<int> length<T>() async => isar.writeTxn(
        () async => await isar.collection<T>().count(),
      );

  int hashId(String string) {
    int hash = 0xcbf29ce484222325;

    int i = 0;
    while (i < string.length) {
      final codeUnit = string.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash &= 0x3FFFFFFFFFFFFFFF;
      hash *= 0x100000001b3;
      hash &= 0x3FFFFFFFFFFFFFFF;
      hash ^= codeUnit & 0xFF;
      hash &= 0x3FFFFFFFFFFFFFFF;
      hash *= 0x100000001b3;
      hash &= 0x3FFFFFFFFFFFFFFF;
    }

    return hash;
  }
}
