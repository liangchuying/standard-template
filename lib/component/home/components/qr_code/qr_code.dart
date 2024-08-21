import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:luid/extension/string_extension.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../app/config/AppColors.dart';
import '../../../../app/config/AppSizes.dart';
import '../../../basic/AppBars.dart';
import '../mobile_scanner/mobile_scanner.dart';

class QrCodes extends StatefulWidget {
  const QrCodes({super.key});

  @override
  State<QrCodes> createState() => _QrCodesState();
}

class _QrCodesState extends State<QrCodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBars(
          title: "我的二维码",
          backgroundColor: Colors.transparent,
          size: 20,
          leadingTap: () => Get.back()).build(),
      body: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: AppSizes.size30, vertical: 100),
              padding: EdgeInsets.symmetric(horizontal: AppSizes.size30),
              decoration: BoxDecoration(
                  // color: AppColors.purple,
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  boxShadow: const [
                    BoxShadow(),
                  ],
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppSizes.size20))),
              child: [
                QrImageView(
                  data: '123456trejterfsfsfsf7890',
                  embeddedImage: AssetImage('assets/logo.png'),
                  errorCorrectionLevel: QrErrorCorrectLevel.H,
                  // 提高容错级别)
                  embeddedImageStyle: QrEmbeddedImageStyle(safeArea: true),
                  dataModuleStyle: QrDataModuleStyle(color: AppColors.purple),
                  eyeStyle: QrEyeStyle(
                      eyeShape: QrEyeShape.circle, color: AppColors.purple),
                ),
                SizedBox(
                  height: AppSizes.size30,
                ),
                Text('扫一扫加我为好友').textStyle(TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: AppSizes.size15,
                  letterSpacing: 0.27,
                  color: AppColors.black,
                ))
              ].toColumn(mainAxisAlignment: MainAxisAlignment.center))
          .center(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        height: 150,
        child: [
          QrBottomNavigationBar(
            title: '保存相册',
            child: SvgPicture.asset(
              'download.svg'.assetsPathHome,
              height: AppSizes.NavSize,
              width: AppSizes.NavSize,
            ).gestures(onTap: () {
              print("扫一扫");
              Get.to(MobileScannerPage());
            }),
          ),
          const SizedBox(
            width: AppSizes.size10,
          ),
          QrBottomNavigationBar(
            title: "扫一扫",
            child: SvgPicture.asset(
              'sweep.svg'.assetsPathHome,
              height: AppSizes.NavSize,
              width: AppSizes.NavSize,
            ).gestures(onTap: () {
              print("扫一扫");
              Get.to(MobileScannerPage());
            }),
          )
        ].toRow(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start),
      ),
    );
  }
}

class QrBottomNavigationBar extends StatelessWidget {
  final String title;
  final Color iconColor;
  final Widget child;

  const QrBottomNavigationBar(
      {super.key,
      required this.title,
      this.iconColor = AppColors.black,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: [
        child.marginOnly(bottom: 15),
        Text(title).textStyle(TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          letterSpacing: 0.2,
          color: AppColors.black, // was lightText
        ))
      ].toColumn(),
    );
  }
}
