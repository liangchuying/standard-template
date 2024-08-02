import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/extension/string_extension.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/AppSizes.dart';
import '../../../../../config/AppTheme.dart';

class DrewerPages extends StatefulWidget {
  const DrewerPages({super.key});

  @override
  State<DrewerPages> createState() => _DrewerState();
}

class _DrewerState extends State<DrewerPages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: [
        SizedBox(
          height: 80,
          child: [
            Icon(
              Icons.menu_book,
              size: AppSizes.size35,
            ),
            Expanded(
                child: const Text('user name')
                    .textStyle(AppTheme.title)
                    .paddingOnly(left: AppSizes.size10)),
            SvgPicture.asset(
              'sweep.svg'.assetsPathHome,
              height: AppSizes.size35,
              width: AppSizes.size35,
            )
          ].toRow(crossAxisAlignment: CrossAxisAlignment.center),
        ),
        // Expanded(
        //     child: SingleChildScrollView(
        //   child: [].toColumn(),
        // )),
      ].toColumn(),
    );
  }
}
