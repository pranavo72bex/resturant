import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/commonwidgets/headerimg.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/conts.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

import '../../../../main.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 31, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderImage(),
            Text(
              "One stop solution \nto order form your \nnear by stores",
              style: bodytext,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                  width: 80,
                  child: IconButton(
                    splashRadius: 100,
                    onPressed: () {
                      Get.toNamed("/register");
                      userdata.writeIfNull('intro', false);
                    },
                    icon: _cutombuttons(),
                    splashColor: Kfadedblue,
                  ),
                )
              ],
            )
          ],
        ),
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
