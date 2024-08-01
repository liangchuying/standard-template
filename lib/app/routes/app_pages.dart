import 'package:get/get.dart';

import '../modules/NotFound/views/404.dart';
import '../modules/auth/sign_in/index.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const LOGIN = Routes.LOGIN;
  static const NotFound = Routes.NotFound;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const Login(),
    ),
  ];

  static final unknownRoute = GetPage(
    name: _Paths.NotFound,
    page: () => const NotFoundPage(),
  );
}
