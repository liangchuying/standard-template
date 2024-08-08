import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/app/modules/home/components/mobile_scanner/scanner_button.dart';
import 'package:luid/app/modules/home/components/mobile_scanner/scanner_button_widgets.dart';
import 'package:luid/app/modules/home/components/mobile_scanner/scanner_error_widget.dart';
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
  /// 扫码图像的百分比
  double _zoomFactor = 0.0;

  late MobileScannerController controller;

  /// 处理扫码响应结果
  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {}
  }

  @override
  void initState() {
    controller = MobileScannerController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() async {
    // TODO: implement dispose
    super.dispose();

    await controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.black,
      child: SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: AppColors.black,
            body: Stack(
              children: [
                MobileScanner(
                  controller: controller,
                  errorBuilder: (context, error, child) {
                    return ScannerErrorWidget(error: error);
                  },
                  onDetect: _handleBarcode,
                ),
                // 从下往上渲染 优先渲染
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: PreferredSize(
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        leading: Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: AppColors.white,
                        ).gestures(onTap: () => Get.back()),
                      ),
                      preferredSize: Size.fromHeight(kToolbarHeight),
                    )),
              ],
            ).gestures(
              onScaleUpdate: (ScaleUpdateDetails e) {
                print('onScaleUpdate${e.scale.clamp(0.0, 1.0)}');
              },
            ),
            bottomNavigationBar: BottomAppBar(
              color: AppColors.black,
              height: 100,
              child: [
                ScannerBottomBar(
                  title: "我的二维码",
                  icon: FontAwesomeIcons.qrcode,
                ),
                Spacer(),
                AnalyzeImageFromGalleryButton(
                  controller: controller,
                ),
              ].toRow(),
            )),
      ),
    );
  }
}
