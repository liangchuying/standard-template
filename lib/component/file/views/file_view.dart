import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/common/hooks/AppBars.dart';
import 'package:styled_widget/styled_widget.dart';

import '../controllers/file_controller.dart';

class FileView extends GetView<FileController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBars(title: "File").build(),
      body: Center(child: Text("文件管理"),),
    );
  }

}
