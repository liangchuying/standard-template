import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../app/config/AppColors.dart';
import '../../../app/config/AppSizes.dart';
import '../controllers/home_controller.dart';

class NavigationBars extends StatefulWidget {
  final bool showSelectedLabels;
  final bool showUnselectedLabels;

  const NavigationBars(
      {super.key,
      this.showSelectedLabels = false,
      this.showUnselectedLabels = false});

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  late HomeController controller;

  @override
  void initState() {
    controller = Get.find<HomeController>();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: widget.showSelectedLabels,
            showUnselectedLabels: widget.showUnselectedLabels,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.purple,
            currentIndex: controller.Activate.value,
            onTap: (index) => controller.SetActivate(index),
            backgroundColor: Colors.transparent, /// 背景透明做高斯模糊
            items: const [
              BottomNavigationBarItem(
                  icon: NavIcon(icon: FontAwesomeIcons.comment),
                  activeIcon: NavIcon(icon: FontAwesomeIcons.solidComment),
                  label: '信息'),
              BottomNavigationBarItem(
                  icon: NavIcon(icon: FontAwesomeIcons.bookmark),
                  activeIcon: NavIcon(icon: FontAwesomeIcons.solidBookmark),
                  label: '收藏'),
              BottomNavigationBarItem(
                  icon: NavIcon(icon: FontAwesomeIcons.file),
                  activeIcon: NavIcon(icon: FontAwesomeIcons.solidFile),
                  label: '文件'),
              BottomNavigationBarItem(
                  icon: NavIcon(icon: FontAwesomeIcons.user),
                  activeIcon: NavIcon(icon: FontAwesomeIcons.userLarge),
                  label: '我的'),
            ]));
  }
}

class NavIcon extends StatelessWidget {
  final IconData? icon;
  final double? size;

  const NavIcon({super.key, this.icon, this.size = AppSizes.NavSize});

  @override
  Widget build(BuildContext context) {
    return FaIcon(icon, size: size);
  }
}
