import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../basic/AppBars.dart';



class moduleOne extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(title: 'moduleOne', isLeading: false).build(),
      body: Center(child: Text('moduleOne'),),
    );
  }
}