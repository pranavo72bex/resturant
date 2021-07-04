import 'package:get/state_manager.dart';

class RadioButtonController extends GetxController {
  var initialvalue = '1'.obs;

  void changeOnClick(value) {
    initialvalue.value = value;
    print(value);
  }
}
