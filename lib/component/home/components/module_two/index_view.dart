import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../basic/AppBars.dart';


class moduleTwo extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(title: 'moduleTwo', isLeading: false).build(),
      body: Center(child: Text('moduleTwo'),),
    );
  }
}