import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      title: "Getx Demo",
      initialRoute: AppPages.LOGIN,
      getPages: AppPages.routes,

      // 404未知页面
      unknownRoute: AppPages.unknownRoute,
    ),
  );
}
