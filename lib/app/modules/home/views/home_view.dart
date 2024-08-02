import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../modules/home/components/navigation_bar.dart';
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
    );
  }
}
