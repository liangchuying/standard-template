import 'package:permission_handler/permission_handler.dart';

import 'EasyLoadingTool.dart';

class PermissionTool {
  static Future<Map<Permission, PermissionStatus>>
      checkPermissionStatus(List<Permission> permission) async {
    // You can request multiple permissions at once.
    return await permission.request();
  }

  static void showPermissionError(String error, {bool isOpenSetting = true}) async {
    final moreInfo = isOpenSetting? ", 3 秒后将自动跳转" : "";
    EasyLoadingTool.showInfo("$error$moreInfo");
    if (isOpenSetting) {
      await Future.delayed(const Duration(seconds: 3), () {
        openAppSettings();
      });
    }
  }


}
