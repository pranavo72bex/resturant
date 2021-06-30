import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/privacyandpolicy.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/roundedurs.dart';

class DetailsUsers extends StatelessWidget {
  const DetailsUsers({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Container(
              height: 72,
              width: double.infinity,
              color: kgreybackground,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  RoundedUsers(),
                  SizedBox(width: 10),
                  Text(
                    "Rohan Patil",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    child: Image.asset(
                      editpenimg,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Text("Name"),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      editpenimg,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              color: kgreybackground,
              width: double.infinity,
              child: Row(
                children: [
                  Text("9767301020"),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("Verified"),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      editpenimg,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Text("rohan57patil@gmail.com"),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("Verify"),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      editpenimg,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                color: kgreybackground,
                width: double.infinity,
                child: Row(
                  children: [
                    Text("Send Feedback"),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Text("Addess Book"),
                    Spacer(),
                    Text(
                      "Addess Book",
                      style: TextStyle(color: Kgrey),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                color: kgreybackground,
                width: double.infinity,
                child: Text("Home"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    "C-12/15 Sector 46 Seawoods 400706",
                    style: TextStyle(color: Kgrey),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      editpenimg,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10),
                height: 40,
                color: kgreybackground,
                width: double.infinity,
                child: Text("Home"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Text(
                    "E101 Empire Building Mumbai 400001",
                    style: TextStyle(color: Kgrey),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      editpenimg,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            PrivacyandPolicyText(),
          ],
        ),
      ),
    );
  }
}
