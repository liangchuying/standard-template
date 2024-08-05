import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luid/config/AppColors.dart';

import '../../../../config/AppGlobalConfig.dart';
import '../../../modules/home/components/navigation_bar.dart';
import '../components/drawer/drawer_view.dart';
import '../controllers/home_controller.dart';

import '../../../modules/home/components/module_one/index_view.dart';
import '../../../modules/home/components/module_two/index_view.dart';
import '../../../modules/home/components/module_three/index_view.dart';
import '../../../modules/home/components/module_four/index_view.dart';

class HomeView extends GetView<HomeController> {
  RxList<Widget> listPage = [
    moduleOne(),
    moduleTwo(),
    moduleThree(),
    moduleFour(),
  ].obs;

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(), // 不能拖拽
        onPageChanged: (index) {
          print(controller.Activate.value);
          controller.SetActivate(index);
        },
        children: listPage,
      ),
      bottomNavigationBar: NavigationBars(),
      drawer: Drawer(child: DrewerPages(), width: GlobalConfig.DrawerWidth, backgroundColor: AppColors.scaffoldBackgroundColor,),
    );
  }
}
