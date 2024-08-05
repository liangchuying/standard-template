import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../../config/AppColors.dart';
import '../../../../../config/AppSizes.dart';

class DrawerTile extends StatelessWidget {
  final String? title;
  final Color? titleColor;
  final IconData? icon;
  final double iconSize;
  final Color? color;
  final Color? trailingColor;
  final Color? iconColor;
  final bool isTrailing;
  final String toNamed;

  const DrawerTile(
      {super.key,
      this.title,
      this.icon,
      this.iconSize = AppSizes.size20,
      this.color = AppColors.darkgrey,
      this.trailingColor = AppColors.darkgrey,
      this.iconColor,
      this.isTrailing = true,
      required this.toNamed,
      this.titleColor = AppColors.darkgrey});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
          left: AppSizes.size16, right: AppSizes.padding10),
      leading: Icon(
        icon,
        size: iconSize,
        color: iconColor == null ? color : null,
      ),
      iconColor: iconColor,
      trailing: isTrailing
          ? Icon(
              Icons.chevron_right,
              size: iconSize,
              color: trailingColor,
            )
          : null,
      title: Text(
        title!,
      ).textStyle(TextStyle(
          color: titleColor ?? AppColors.darkgrey, fontSize: 14)),
    ).gestures(
        onTap: () =>
            (isTrailing && toNamed != '') ? Get.toNamed(toNamed) : null);
  }
}
