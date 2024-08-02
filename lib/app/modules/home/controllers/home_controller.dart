import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt Activate = 1.obs;
  var pageController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }
}
