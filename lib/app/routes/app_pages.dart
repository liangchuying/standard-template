import 'package:get/get.dart';

import '../../component/auth/sign_in/index.dart';
import '../../component/home/bindings/home_binding.dart';
import '../../component/home/views/home_view.dart';
import '../../component/notFound/views/404.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const LOGIN = Routes.LOGIN;
  static const NotFound = Routes.NotFound;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const Login(),
    ),
  ];

  static final unknownRoute = GetPage(
    name: _Paths.NotFound,
    page: () => const NotFoundPage(),
  );
}
