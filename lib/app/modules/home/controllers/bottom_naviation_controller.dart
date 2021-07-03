import 'package:get/state_manager.dart';

class BottomNavigationController extends GetxController {
  var initialState = 0.obs;
  void changeState(value) {
    initialState.value = value;
  }
}
