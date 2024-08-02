import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/app/basic_widget/AppBars.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class moduleThree extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(title: 'moduleThree', leading: Icon(FontAwesomeIcons.bars)).build(),
      body: Center(
        child: Text('moduleThree'),
      ),
    );
  }
}
