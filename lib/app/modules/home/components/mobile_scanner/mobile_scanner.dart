import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/app/basic_widget/AppBars.dart';
import 'package:luid/config/AppTheme.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../../config/AppColors.dart';

class MobileScannerPage extends StatefulWidget {
  const MobileScannerPage({super.key});

  @override
  State<MobileScannerPage> createState() => _MobileScannerPageState();
}

class _MobileScannerPageState extends State<MobileScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.black,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBars(
                title: "",
                backgroundColor: Colors.transparent,
                icooColor: AppColors.white,
                leadingTap: () => Get.back()).build(),
            backgroundColor: AppColors.black,
            bottomNavigationBar: BottomAppBar(
              color: AppColors.black,
              height: 100,
              child: [
                ScannerBottombar(
                  title: "我的二维码",
                  icon: FontAwesomeIcons.qrcode,
                ),
                Spacer(),
                ScannerBottombar(
                  title: "相册",
                  icon: FontAwesomeIcons.image,
                ),
              ].toRow(),
            )),
      ),
    );
  }
}

class ScannerBottombar extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? iconColor;

  const ScannerBottombar({super.key, this.title, this.icon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return [
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(16),
          color: AppColors.text333333,
          child: Icon(
            icon,
            color: AppColors.white,
            size: 20,
          ),
        ),
      ),
      Text(title!).textStyle(TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.2,
        color: AppColors.text999999, // was lightText
      ))
    ].toColumn(
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
