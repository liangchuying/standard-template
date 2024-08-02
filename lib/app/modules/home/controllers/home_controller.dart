import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt Activate = 1.obs;
  var pageController;

  @override
  void onInit() {
    pageController = PageController(initialPage: Activate.value);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void SetActivate(int value) {
    // pageController.animateToPage(value, duration: Duration(milliseconds: 500), curve: Curves.easeInCirc);
    pageController.jumpToPage(value);
    Activate.value = value;
  }
}
