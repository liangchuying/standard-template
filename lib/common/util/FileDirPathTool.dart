import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileDirPath {
  late bool _permissionReady;

  Future<void> retryRequestPermission() async {
    final hasGranted = await _checkPermission();

    if (hasGranted) await prepareSaveDir();
    _permissionReady = hasGranted;
  }

  ///获取文件保存路径
  Future<String> prepareSaveDir() async {
    String localPath = (await _getSavedDir())!;
    final savedDir = Directory(localPath);
    if (!savedDir.existsSync()) {
      await savedDir.create();
    }
    return localPath;
  }

  Future<String?> _getSavedDir() async {
    String? externalStorageDirPath;
    final Directory? downloadsDir;
    if (Platform.isAndroid) {
      try {
        downloadsDir = await getDownloadsDirectory();
        externalStorageDirPath = downloadsDir!.path;
        print('externalStorageDirPath: $externalStorageDirPath');
      } catch (err, st) {
        print('failed to get downloads path: $err, $st');
        final directory = await getExternalStorageDirectory();
        externalStorageDirPath = directory?.path;
      }
    } else if (Platform.isIOS) {
      // var dir = (await _dirsOnIOS)[0]; // temporary
      // var dir = (await _dirsOnIOS)[1]; // applicationSupport
      // var dir = (await _dirsOnIOS)[2]; // library
      var dir = (await _dirsOnIOS)[3]; // applicationDocuments
      //var dir = (await _dirsOnIOS)[4]; // downloads
      dir ??= await getApplicationDocumentsDirectory();
      externalStorageDirPath = dir.absolute.path;
    }
    return externalStorageDirPath;
  }

  Future<List<Directory?>> get _dirsOnIOS async {
    final temporary = await getTemporaryDirectory();
    final applicationSupport = await getApplicationSupportDirectory();
    final library = await getLibraryDirectory();
    final applicationDocuments = await getApplicationDocumentsDirectory();
    final downloads = await getDownloadsDirectory();
    final dirs = [
      temporary,
      applicationSupport,
      library,
      applicationDocuments,
      downloads
    ];
    return dirs;
  }

  /// 检测是否有存储权限
  Future<bool> _checkPermission() async {
    if (Platform.isIOS) return true;
    if (Platform.isAndroid) {
      final info = await DeviceInfoPlugin().androidInfo;
      if (info.version.sdkInt > 28) return true;

      final status = await Permission.storage.status;
      if (status == PermissionStatus.granted) return true;

      final result = await Permission.storage.request();
      return result == PermissionStatus.granted;
    }

    throw StateError('unknown platform');
  }
}
