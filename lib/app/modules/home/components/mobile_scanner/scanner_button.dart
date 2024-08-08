import 'package:flutter/cupertino.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../../config/AppColors.dart';

class ScannerBottomBar extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const ScannerBottomBar(
      {super.key, this.title, this.icon, this.iconColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return [
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(16),
          color: AppColors.text333333,
          child: Icon(
            icon,
            color: AppColors.white,
            size: 20,
          ),
        ),
      ).gestures(onTap: onPressed),
      Text(title!).textStyle(TextStyle(
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
