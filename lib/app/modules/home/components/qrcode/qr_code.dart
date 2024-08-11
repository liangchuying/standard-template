import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luid/app/basic_widget/AppBars.dart';
import 'package:luid/app/modules/home/components/mobile_scanner/my_Bottom_navigation_bar.dart';
import 'package:luid/config/AppSizes.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:styled_widget/styled_widget.dart';

class Qrcode extends StatefulWidget {
  const Qrcode({super.key});

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBars(title: '我的名片', backgroundColor: Colors.transparent).build(),
      body: Container(
        padding: const EdgeInsets.all(AppSizes.padding20),
        child: QrImageView(
          data: '1234567890',
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: [
          MyBottomNavigationBar(
            title: "保存相册",
            icon: FontAwesomeIcons.image,
            onPressed: () {
              print('保存');
            },
          ),
          const SizedBox(
            width: AppSizes.size10,
          ),
          MyBottomNavigationBar(
            title: "扫一扫",
            icon: FontAwesomeIcons.swatchbook,
            onPressed: () {
              print("扫一扫");
            },
          )
        ].toRow(mainAxisAlignment: MainAxisAlignment.center),
      ),
    );
  }
}
