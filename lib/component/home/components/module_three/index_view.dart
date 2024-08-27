import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:styled_widget/styled_widget.dart';

import '../../../../common/hooks/AppBars.dart';
import '../../../../module/example/airTicket/view.dart';
import '../../controllers/home_controller.dart';

class moduleThree extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(
        title: 'moduleThree',
        leading: Icon(FontAwesomeIcons.bars,).gestures(onTap: () {
          controller.openDrawer();
        }),
      ).build(),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.to(AirTicket());
        }, child: Text("ticket")),
      ),
    );
  }
}
