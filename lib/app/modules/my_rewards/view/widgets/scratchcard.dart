import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/conts.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:scratcher/widgets.dart';

class ScratchCard extends StatelessWidget {
  const ScratchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scratcher(
      accuracy: ScratchAccuracy.low,
      brushSize: 40,
      color: Kblue,
      image: Image.asset(
        rewardimg,
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 160,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: bordercolor),
          color: kwhite,
        ),
        child: Column(
          children: [
            Text(
              "Rs 505 off",
              style: TextStyle(
                color: Kblack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("On Majha Moryaidol purchase"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      boxshadow,
                    ],
                  ),
                ),
                Image.asset(
                  banerstarimg,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
