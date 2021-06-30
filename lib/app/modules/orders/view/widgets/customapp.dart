import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';

class CustomApp extends StatelessWidget {
  const CustomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              soooperimg,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              editpenimg,
            ),
          ),
        ],
      ),
    );
  }
}
