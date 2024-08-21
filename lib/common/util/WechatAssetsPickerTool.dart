import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class WechatAssetsPickerTool {
  var method;
  var onLongPress;

  WechatAssetsPickerTool({
    required this.method,
    this.onLongPress,
  });

  static Future<PermissionStatus> assetsPermission() async {
    if(Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      print(androidInfo.version.sdkInt);
      if(androidInfo.version.sdkInt > 32) {
        /// android sdk 获取相册权限
        return await Permission.photos.request();
      }
      else {
        /// 本地存储权限
        return await Permission.storage.request();
      }
    }

    return PermissionStatus.denied;
  }

  factory WechatAssetsPickerTool.common(BuildContext context, int maxAssetsCount) {
    return WechatAssetsPickerTool(
      method: (BuildContext context, List<AssetEntity>? assets) {
        return AssetPicker.pickAssets(
          context,
          pickerConfig: AssetPickerConfig(
            maxAssets: maxAssetsCount,
            selectedAssets: assets, /// 已选择的图片
            requestType: RequestType.image,
          ),
        );
      },
    );
  }
}