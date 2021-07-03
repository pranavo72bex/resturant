import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/conts.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/register_view.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 30,
            ),
            child: Image.asset(
              soooperimg,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "One stop solution \nto order form your \nnear by stores",
              style: bodytext,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Login",
                style: sooper,
              ),
              SizedBox(
                height: 80,
                width: 80,
                child: IconButton(
                  splashRadius: 100,
                  onPressed: () {
                    Get.off(() => RegisterPage());
                  },
                  icon: _cutombuttons(),
                  splashColor: Kfadedblue,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }

  Widget _cutombuttons() {
    return Container(
      height: 64,
      width: 64,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Kblue,
      ),
      child: ImageIcon(
        AssetImage(
          onboardingarrowimg,
        ),
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
