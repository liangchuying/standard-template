import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:luid/config/AppColors.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/AppSizes.dart';

class AppBars {
  String? title;
  bool centerTitle;
  double? size;
  List<Widget>? actions;
  Color? backgroundColor;
  Widget? leading;
  bool isLeading;
  GestureTapCallback? leadingTap;
  Color? icooColor;

  AppBars(
      {this.title,
      this.centerTitle = true,
      this.size = AppSizes.size25,
      this.actions,
      this.backgroundColor = AppColors.mainBackground,
      this.leading,
      this.isLeading = true,
      this.leadingTap,
      this.icooColor});

  // PreferredSize
  PreferredSizeWidget? build() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: backgroundColor,
      leading: isLeading
          ? leading ??
              Icon(
                FontAwesomeIcons.chevronLeft,
                color: icooColor,
              ).gestures(onTap: leadingTap)
          : null,
      actions: actions,
      title: Text(title!).textStyle(TextStyle(fontSize: size)),
      centerTitle: centerTitle,
    );
  }
}

/// 高斯模糊组件
class BlurBar {
  final Widget child;
  final double sigmaX;

  final double sigmaY;

  final bool hasColor; //是否具备颜色
  final EdgeInsets? padding;

  BlurBar(
      {required this.child,
      this.padding,
      this.sigmaX = 40,
      this.sigmaY = 40,
      this.hasColor = true});

  Widget build() {
    return ClipRect(
      //背景模糊化
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: sigmaX,
          sigmaY: sigmaY,
        ),
        child: Container(
          color: hasColor ? const Color.fromARGB(100, 255, 255, 255) : null,
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
