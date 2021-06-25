import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/headertext.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/privacyandpolicy.dart';

class UsersInfo extends StatelessWidget {
  const UsersInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomeAppbar(),
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
