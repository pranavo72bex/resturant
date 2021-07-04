import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/core/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/headertext.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/privacyandpolicy.dart';

class UsersInfo extends StatelessWidget {
  const UsersInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                HeaderTextUsers(),
                customContainerText(
                  text: "FAQ",
                  color: kwhite,
                ),
                customContainerText(
                  text: "Support",
                  color: kgreybackground,
                ),
                customContainerText(
                  text: "Register your Business",
                  color: kwhite,
                ),
                customContainerText(
                  text: "Send Feedback",
                  color: kgreybackground,
                ),
                customContainerText(
                  text: "Rate us On the Play Store",
                  color: kwhite,
                ),
                customContainerText(
                  text: "Log Out",
                  color: kgreybackground,
                ),
                SizedBox(height: 40),
                PrivacyandPolicyText()
              ],
            ),
            SideFloatingBtn()
          ],
        ),
      ),
    );
  }
}

class customContainerText extends StatelessWidget {
  const customContainerText({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 40,
      width: double.infinity,
      color: color,
      child: Text(text),
    );
  }
}
