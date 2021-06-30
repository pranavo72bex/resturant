import 'package:get/get.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/register_view.dart';

import 'package:restaurantsapp/app/modules/home/views/home_view.dart';
import 'package:restaurantsapp/app/modules/onboarding_screen/view/onboarding_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
    ),
    GetPage(
      name: _Paths.Intropage,
      page: () => OnboardingScreens(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => RegisterPage(),
    ),
  ];
}
