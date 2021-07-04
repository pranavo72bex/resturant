import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/roundedurs.dart';
import '../detailusers.dart';

class HeaderTextUsers extends StatelessWidget {
  const HeaderTextUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: EdgeInsets.all(8),
      width: double.infinity,
      color: kgreybackground,
      child: Row(
        children: [
          RoundedUsers(),
          SizedBox(
            width: 5,
          ),
          Text(
            "Rohan Patil",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          usereditbutton(),
        ],
      ),
    );
  }
}

class usereditbutton extends StatelessWidget {
  const usereditbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => DetailsUsers()),
      child: Container(
        width: 65,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: bordercolor,
          ),
        ),
        child: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
