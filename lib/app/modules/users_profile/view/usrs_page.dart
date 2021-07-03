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
                CustomContainerText("FAQ", kwhite),
                CustomContainerText("Support", kgreybackground),
                CustomContainerText("Register your Business", kwhite),
                CustomContainerText("Send Feedback", kgreybackground),
                CustomContainerText("Rate us On the Play Store", kwhite),
                CustomContainerText("Log Out", kgreybackground),
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

  Widget CustomContainerText(String text, dynamic color) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 40,
      width: double.infinity,
      color: color,
      child: Text(text),
    );
  }
}
