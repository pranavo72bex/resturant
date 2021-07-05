import 'package:get/get.dart';
import 'package:restaurantsapp/app/binding/allcontroller_binding.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/register_view.dart';
import 'package:restaurantsapp/app/modules/home/views/home_view.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/bottomnaviagationbar.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/myreport_headertext.dart';
import 'package:restaurantsapp/app/modules/onboarding_screen/view/onboarding_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.AppNavigator,
      page: () => AppNavigator(),
      binding: AllControllerBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => MyReportHeader(),
      binding: AllControllerBinding(),
    ),
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
