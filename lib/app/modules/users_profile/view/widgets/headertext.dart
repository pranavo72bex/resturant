import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/widgets/roundedurs.dart';
import '../detailusers.dart';

class HeaderTextUsers extends StatelessWidget {
  const HeaderTextUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      color: kgreybackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rohan Patil",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
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
              )
            ],
          ),
          RoundedUsers(),
        ],
      ),
    );
  }
}
