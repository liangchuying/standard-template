import 'package:flutter/material.dart';
import 'package:luid/extension/string_extension.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../config/AppSizes.dart';

class Drewer extends StatefulWidget {
  const Drewer({super.key});

  @override
  State<Drewer> createState() => _DrewerState();
}

class _DrewerState extends State<Drewer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: [
        SizedBox(
          height: 80,
          child: [
            Expanded(
                flex: 1,
                child: Icon(
                  Icons.menu_book,
                  size: AppSizes.size35,
                )),
            Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  'sweep'.assetsPathHome,
                  height: AppSizes.size35,
                  width: AppSizes.size35,
                )),
          ].toRow(),
        ),
        // Expanded(
        //     child: SingleChildScrollView(
        //   child: [].toColumn(),
        // )),
      ].toColumn(),
    );
  }
}
