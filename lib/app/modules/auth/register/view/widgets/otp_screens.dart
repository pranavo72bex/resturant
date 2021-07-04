import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter Verification Code",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text("We have sent a verification code to"),
          Text(
            "9845xxxxx",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          PinCodeTextField(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            appContext: context,
            length: 5,
            onChanged: (_) {},
            backgroundColor: Colors.transparent,
            autoFocus: true,
            keyboardType: TextInputType.number,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 50,
              activeColor: Kblue,
              inactiveColor: bordercolor,
              selectedColor: Kblue,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't recieve the code?"),
              Text(
                "Resend now",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
