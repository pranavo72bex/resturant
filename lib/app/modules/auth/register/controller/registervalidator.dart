import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class RegisterValidatorController extends GetxController {
  final GlobalKey<FormState> RegisterFromKey = GlobalKey<FormState>();
  late TextEditingController phoneNumberController;
  var phone = '';
  @override
  void onInit() {
    phoneNumberController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    super.onClose();
  }

  String? ValidatePhone(String Value) {
    if (!GetUtils.isPhoneNumber(Value)) {
      return "please enter valid number";
    }
    return null;
  }

  void checkRegister() {
    final isvaild = RegisterFromKey.currentState!.validate();
    if (!isvaild) {
      return;
    }
    RegisterFromKey.currentState!.save();
  }
}
