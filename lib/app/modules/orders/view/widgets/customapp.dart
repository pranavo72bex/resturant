import 'package:flutter/material.dart';

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
              "assets/icons/soooperimage.png",
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/icons/editpen.png",
            ),
          ),
        ],
      ),
    );
  }
}
