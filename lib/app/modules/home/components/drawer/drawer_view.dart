import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/config/AppColors.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../../../config/AppSizes.dart';
import 'drawer_head_menu.dart';

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
        Container(
          padding: const EdgeInsets.all(AppSizes.padding20),
          child: HeadMenu(),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: [
            BasicData(),
            SizedBox(
              height: AppSizes.size20,
            ),
            BasicData(),
            SizedBox(
              height: AppSizes.size20,
            ),
            AccountExit(),
            SizedBox(height: 30)
          ].toColumn(),
        )),
      ].toColumn(),
    );
  }

  Widget BasicData() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSizes.padding15),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.minRadius))),
      child: [
        [
          Container(
            padding: EdgeInsets.only(
                left: AppSizes.size16,
                right: AppSizes.size20,
                top: AppSizes.size8,
                bottom: AppSizes.size8),
            child: Text("基础信息").textStyle(TextStyle(
                fontSize: 10,
                color: AppColors.text999999,
                fontWeight: FontWeight.w400)),
          )
        ].toRow(),
        const Divider(
          color: AppColors.notWhite,
          height: 0.1,
        ),
        ListTile(
          contentPadding:
              EdgeInsets.only(left: AppSizes.size16, right: AppSizes.padding10),
          leading: Icon(
            Icons.add_reaction,
            size: 20,
            color: AppColors.darkgrey,
          ),
          iconColor: AppColors.darkgrey,
          trailing: Icon(
            Icons.chevron_right,
            size: 20,
          ),
          title: Text(
            '我的消息',
          ).textStyle(TextStyle(color: AppColors.darkgrey, fontSize: 14)),
        ),
        const Divider(
          color: AppColors.notWhite,
          height: 0.1,
        ).paddingOnly(left: AppSizes.size16),
        ListTile(
          contentPadding:
              EdgeInsets.only(left: AppSizes.size16, right: AppSizes.padding10),
          leading: Icon(
            Icons.add_reaction,
            size: 20,
          ),
          iconColor: AppColors.darkgrey,
          trailing: Icon(
            Icons.chevron_right,
            size: 20,
          ),
          title: Text(
            '我的相册',
          ).textStyle(TextStyle(color: AppColors.darkgrey, fontSize: 14)),
        ),
        const Divider(
          color: AppColors.notWhite,
          height: 0.1,
        ).paddingOnly(left: AppSizes.size16),
        ListTile(
          contentPadding:
              EdgeInsets.only(left: AppSizes.size16, right: AppSizes.padding10),
          leading: Icon(
            Icons.add_reaction,
            size: 20,
          ),
          iconColor: AppColors.darkgrey,
          trailing: Icon(
            Icons.chevron_right,
            size: 20,
          ),
          title: Text(
            '我的文件',
          ).textStyle(TextStyle(color: AppColors.darkgrey, fontSize: 14)),
        ),
      ].toColumn(),
    );
  }

  Widget AccountExit() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSizes.padding15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.minRadius))),
      child: [
        const Divider(
          color: AppColors.notWhite,
          height: 0.1,
        ),
        ListTile(
          contentPadding:
              EdgeInsets.only(left: AppSizes.size16, right: AppSizes.padding10),
          leading: Icon(
            Icons.add_reaction,
            size: 20,
          ),
          iconColor: AppColors.darkgrey,
          trailing: Icon(
            Icons.chevron_right,
            size: 20,
          ),
          title: Text(
            '切换账号',
          ).textStyle(TextStyle(color: AppColors.darkgrey, fontSize: 14)),
        ),
        const Divider(
          color: AppColors.notWhite,
          height: 0.1,
        ).paddingOnly(left: AppSizes.size16),
        ListTile(
          contentPadding:
              EdgeInsets.only(left: AppSizes.size16, right: AppSizes.padding10),
          leading: Icon(
            Icons.add_reaction,
            size: 20,
            color: AppColors.mainRedAccent,
          ),
          trailing: Icon(
            Icons.chevron_right,
            size: 20,
          ),
          title: Text(
            '退出登录/关闭',
          ).textStyle(TextStyle(color: AppColors.mainRedAccent, fontSize: 14)),
        ),
      ].toColumn(),
    );
  }
}
