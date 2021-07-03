import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_buttons.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/auth/login/view/login_page.dart';
import 'package:restaurantsapp/app/modules/auth/register/controller/registervalidator.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/widgets/otp_screens.dart';

RegisterValidatorController registerValidatorController =
    Get.put(RegisterValidatorController());

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerValidatorController.RegisterFromKey,
      child: Column(
        children: [
          Container(
            width: 309,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                suffixIcon: customButtonarrow(),
                hintText: "9845xxxx",
                hintStyle: TextStyle(
                  color: Kblack,
                  fontWeight: FontWeight.normal,
                ),
              ),
              controller: registerValidatorController.phoneNumberController,
              onSaved: (value) {
                registerValidatorController.phone != value;
              },
              validator: (value) {
                return registerValidatorController.ValidatePhone(value!);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButtons(
            inputtext: 'Submit',
            color: Colors.black,
            ontap: () => submitbutn(),
          ),
          SizedBox(
            height: 10,
          ),
          CustomButtons(
            inputtext: 'Continue with Gmail',
            color: Colors.red,
            icon: Icons.mail_outline_rounded,
            ontap: () {
              print("Gmail");
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomButtons(
            inputtext: 'Continue with Facebook',
            color: Colors.blue,
            icon: Icons.facebook,
            ontap: () {
              print("Facebook");
            },
          ),
        ],
      ),
    );
  }

  void submitbutn() {
    registerValidatorController.checkRegister();

    if (registerValidatorController.RegisterFromKey.currentState!.validate()) {
      Get.to(() => LoginPage());
    }
  }

  Widget customButtonarrow() {
    return InkWell(
      onTap: () {
        Get.to(OTPScreen());
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Kblue,
        ),
        child: ImageIcon(
          AssetImage(arrowimg),
          color: Colors.white,
        ),
      ),
    );
  }
}
