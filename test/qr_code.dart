import 'package:flutter/material.dart';
import 'package:luid/app/basic_widget/AppBars.dart';
import 'package:luid/config/AppColors.dart';
import 'package:luid/config/AppSizes.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:get/get.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar:
          AppBars(title: "我的二维码", backgroundColor: Colors.transparent, size: 20)
              .build(),
      body: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
              padding: EdgeInsets.symmetric(horizontal: 30),
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
                    embeddedImage: AssetImage('assets/home/cat.png'),
                    errorCorrectionLevel: QrErrorCorrectLevel.H, // 提高容错级别)
                    embeddedImageStyle: QrEmbeddedImageStyle(safeArea: true),
                    dataModuleStyle: QrDataModuleStyle(color: AppColors.purple),
                    eyeStyle: QrEyeStyle(
                        eyeShape: QrEyeShape.circle, color: AppColors.purple),

                ),
                SizedBox(
                  height: 30,
                ),
                Text('扫一扫加我为好友').textStyle(TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  letterSpacing: 0.27,
                  color: AppColors.text999999,
                ))
              ].toColumn(mainAxisAlignment: MainAxisAlignment.center))
          .center(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
      ),
    );
  }
}
