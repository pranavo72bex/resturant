import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/binding/allcontroller_binding.dart';
import 'package:restaurantsapp/app/core/commonwidgets/headerimg.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/auth/login/controller/validatorController.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/bottomnaviagationbar.dart';

LoginValidatorController loginValidatorController =
    Get.put(LoginValidatorController());

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 31, top: 100),
            child: Form(
              key: loginValidatorController.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderImage(),
                  SizedBox(
                    height: 76,
                  ),
                  Text("Enter your Name &  Email ID"),
                  SizedBox(height: 10),
                  Container(
                    width: 310.5,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Name",
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
                  Container(
                    width: 310,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email ID",
                        hintStyle: TextStyle(
                          color: Kgrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      controller: loginValidatorController.emailController,
                      onSaved: (value) {
                        loginValidatorController.email != value;
                      },
                      validator: (value) {
                        return loginValidatorController.ValidateEmail(value!);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 48,
                    width: 311.5,
                    child: ElevatedButton(
                      onPressed: () {
                        loginValidatorController.checkLogin();
                        if (loginValidatorController.loginFormKey.currentState!
                            .validate()) {
                          Get.toNamed("/appNaviagator");
                          // Get.offAll(
                          //   () => AppNavigator(),
                          //   binding: AllControllerBinding(),
                          // );
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
