import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/commonheard.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/register_view.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
              ),
              child: ScoooperLin(),
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
                IconButton(
                  splashColor: Colors.blue[100],
                  splashRadius: 100,
                  onPressed: () {
                    Get.off(() => RegisterPage());
                  },
                  icon: Center(
                    child: Icon(
                      FontAwesomeIcons.solidPlayCircle,
                      color: Colors.blue,
                      size: 45,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
