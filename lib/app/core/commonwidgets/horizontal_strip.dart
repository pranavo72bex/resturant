import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class Horizontalstrip extends StatelessWidget {
  const Horizontalstrip({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: kgreybackground,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
