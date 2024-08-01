import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../config/AppSizes.dart';

class Appbars extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool centerTitle;
  final double? size;

  const Appbars(
      {super.key,
      this.title,
      this.centerTitle = true,
      this.size = AppSizes.size20});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title!).textStyle(TextStyle(fontSize: size)),
      centerTitle: centerTitle,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
