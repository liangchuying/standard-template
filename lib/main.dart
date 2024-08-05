import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    GetMaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.purple,
            drawerTheme: DrawerThemeData(shape: BorderDirectional())),
        debugShowCheckedModeBanner: false,
        title: "Getx Demo",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        // 404未知页面
        unknownRoute: AppPages.unknownRoute,
        builder: (BuildContext c, Widget? w) {
          return Stack(
            children: <Widget>[
              Positioned.fill(
                  child: FlutterEasyLoading(
                    child: w,
                  )),
              // if (kDebugMode) const MemoryUsageView(),
            ],
          );
        },
        locale: const Locale('zh', 'CN'),
        //默认展示本地语言
        fallbackLocale: const Locale('zh', 'CN'),
        //语言选择无效时，备用语言
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
          GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
          GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
        ],
        supportedLocales: const [
          Locale('zh', 'CH'),
          // const Locale('en','US'),
        ]),
  );
}
