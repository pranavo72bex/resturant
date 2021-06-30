import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/headertext.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/privacyandpolicy.dart';

class UsersInfo extends StatelessWidget {
  const UsersInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(soooperimg),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                usrimg,
              ),
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                qrcodeimg,
              ),
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                messageimg,
              ),
              color: Colors.black,
            ),
          )
        ],
      ),
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
