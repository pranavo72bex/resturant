import 'package:get/state_manager.dart';

class ReportRadioButtonController extends GetxController {
  var groupValue = '1'.obs;

  void ChangeValue(value) {
    groupValue.value = value;
    print(groupValue.value);
  }
}
