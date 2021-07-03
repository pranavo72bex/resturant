import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/auth/login/view/login_page.dart';
import 'package:restaurantsapp/app/modules/auth/register/controller/registervalidator.dart';

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
                hintText: "Mobile Number",
                hintStyle: TextStyle(
                  color: Kblack,
                  fontWeight: FontWeight.bold,
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
            height: 10,
          ),
          Container(
            width: 309,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter OTP",
                hintStyle: TextStyle(
                  color: Kgrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                registerValidatorController.checkRegister();

                if (registerValidatorController.RegisterFromKey.currentState!
                    .validate()) {
                  Get.to(() => LoginPage());
                }
              },
              child: Text(
                "submit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customButtonarrow() {
    return InkWell(
      onTap: () {},
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
