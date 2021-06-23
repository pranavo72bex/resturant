import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/home/views/home_view.dart';

class SideFloatingBtn extends StatelessWidget {
  const SideFloatingBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 250,
      child: RotatedBox(
        quarterTurns: -1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(20),
              bottomEnd: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 5, top: 5),
            child: InkWell(
              onTap: () => Get.to(HomeView()),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Kblack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
