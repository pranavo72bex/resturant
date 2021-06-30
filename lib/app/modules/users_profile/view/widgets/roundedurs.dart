import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';

class RoundedUsers extends StatelessWidget {
  const RoundedUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Kblue,
      ),
      child: Center(
        child: Text(
          "RP",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
    ;
  }
}
