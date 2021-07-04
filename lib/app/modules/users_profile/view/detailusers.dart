import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
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
            _CustomContainerBody(
              text: 'Name',
              verifytext: '',
              img: editpenimg,
            ),
            _CustomContainerBody(
              text: '9812345678',
              verifytext: "verify",
              backgroundcolor: kgreybackground,
              img: editpenimg,
            ),
            _CustomContainerBody(
              text: "rohan@123gmail.com",
              verifytext: 'verify',
              img: editpenimg,
            ),
            _CustomContainerBody(
              text: 'Send Feedback',
              verifytext: '',
              backgroundcolor: kgreybackground,
              img: '',
            ),
            addressContainer(),
            _CustomContainerBody(
              text: 'Home',
              verifytext: '',
              img: '',
              backgroundcolor: kgreybackground,
            ),
            _CustomContainerBody(
              text: 'C-12/15 Sector 46 Seawoods 400706',
              verifytext: '',
              img: editpenimg,
            ),
            _CustomContainerBody(
              text: 'E101 Empire Building Mumbai 400001',
              verifytext: '',
              img: editpenimg,
            ),
            SizedBox(height: 40),
            PrivacyandPolicyText(),
          ],
        ),
      ),
    );
  }

  InkWell addressContainer() {
    return InkWell(
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
    );
  }
}

class _CustomContainerBody extends StatelessWidget {
  const _CustomContainerBody({
    Key? key,
    required this.text,
    required this.verifytext,
    this.backgroundcolor,
    required this.img,
  }) : super(key: key);
  final String text;
  final String verifytext;
  final backgroundcolor;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 40,
      color: backgroundcolor,
      width: double.infinity,
      child: Row(
        children: [
          Text(text),
          Spacer(),
          if (verifytext.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(verifytext),
            ),
          if (img.isNotEmpty)
            InkWell(
              onTap: () {},
              child: Image.asset(
                img,
              ),
            ),
        ],
      ),
    );
  }
}
