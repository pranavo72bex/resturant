import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class LoginValidatorController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  var email = '';
  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  String? ValidateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "please enter vaild email";
    }
    return null;
  }

  void checkLogin() {
    final isvaild = loginFormKey.currentState!.validate();
    if (!isvaild) {
      return null;
    }
    loginFormKey.currentState!.save();
  }
}
