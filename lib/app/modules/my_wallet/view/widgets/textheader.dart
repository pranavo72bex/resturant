import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class Textheaderpage extends StatelessWidget {
  const Textheaderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kgreybackground,
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "My Wallet Balance",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "Rs. 5501/-",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
