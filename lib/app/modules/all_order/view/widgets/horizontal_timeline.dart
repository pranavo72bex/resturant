import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class HorizontalTimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        CustomCircle(true),
        Customline(85),
        CustomCircle(true),
        Customline(85),
        CustomCircle(true),
        Customline(90),
        CustomCircle(false),
      ],
    );
  }

  Widget CustomCircle(bool x) {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: bordercolor),
        color: x ? kgreen : kwhite,
      ),
    );
  }

  Widget Customline(double width) {
    return Container(
      width: width,
      height: 1,
      color: bordercolor,
    );
  }
}
