import 'package:get/instance_manager.dart';
import 'package:restaurantsapp/app/modules/all_order/controller/radiobutton_controller.dart';
import 'package:restaurantsapp/app/modules/home/controllers/bottom_naviation_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<BottomNavigationController>(BottomNavigationController());
    Get.put<RadioButtonController>(RadioButtonController());
  }
}
