import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/config/AppColors.dart';
import 'package:luid/extension/string_extension.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../config/AppSizes.dart';
import '../mobile_scanner/mobile_scanner.dart';
import '../qr_code/qr_code.dart';

class HeadMenu extends StatelessWidget {
  const HeadMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(
        Icons.verified_user,
        size: AppSizes.size25,
      ),
      Expanded(
          child: [
            const Text('user name').textStyle(const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 0.18,
                color: AppColors.darkerText,
                height: 1)),
            const Icon(
              Icons.chevron_right,
              size: AppSizes.size20,
            )
          ]
              .toRow(crossAxisAlignment: CrossAxisAlignment.center).gestures(onTap: () => Get.to(QrCodes()))
              .paddingOnly(left: AppSizes.size10)),
      SvgPicture.asset(
        'sweep.svg'.assetsPathHome,
        height: AppSizes.size25,
        width: AppSizes.size25,
      ).gestures(onTap: () {
        print("扫一扫");
        Get.to(MobileScannerPage());
      })
    ].toRow(crossAxisAlignment: CrossAxisAlignment.center);
  }
}