import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/app/basic_widget/AppBars.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:luid/app/modules/home/controllers/home_controller.dart';
import 'package:styled_widget/styled_widget.dart';

class moduleThree extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(
        title: 'moduleThree',
        leading: Icon(FontAwesomeIcons.bars).gestures(onTap: () {
          controller.openDrawer();
        }),
      ).build(),
      body: Center(
        child: Text('moduleThree'),
      ),
    );
  }
}
