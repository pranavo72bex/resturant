import 'package:get/instance_manager.dart';
import 'package:restaurantsapp/app/modules/all_order/controller/radiobutton_controller.dart';
import 'package:restaurantsapp/app/modules/auth/login/controller/validatorController.dart';
import 'package:restaurantsapp/app/modules/auth/register/controller/registervalidator.dart';
import 'package:restaurantsapp/app/modules/home/controllers/bottom_naviation_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BottomNavigationController(),
      fenix: true,
    );
    Get.lazyPut(
      () => RadioButtonController(),
      fenix: true,
    );
    Get.lazyPut(
      () => RegisterValidatorController(),
      fenix: true,
    );
    Get.lazyPut(
      () => LoginValidatorController(),
      fenix: true,
    );
  }
}
