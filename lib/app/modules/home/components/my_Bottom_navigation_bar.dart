import 'package:flutter/cupertino.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../config/AppColors.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  const MyBottomNavigationBar(
      {super.key, this.title, this.icon, this.iconColor, this.onPressed, this.backgroundColor = AppColors.text333333});

  @override
  Widget build(BuildContext context) {
    return [
      ClipOval(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: backgroundColor,
          child: Icon(
            icon,
            color: AppColors.white,
            size: 20,
          ),
        ),
      ).gestures(onTap: onPressed),
      Text(title!).textStyle(const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.2,
        color: AppColors.text999999, // was lightText
      ))
    ].toColumn(
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
