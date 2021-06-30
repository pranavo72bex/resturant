import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';

class HorizontalTimeText extends StatelessWidget {
  const HorizontalTimeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CutomText("Order Accepted", "20/02/021"),
        CutomText("Order Processing", "20/02/021"),
        CutomText("Out For Delivery", "20/02/021"),
        CutomText("Yet to be delivered", "20/02/021"),
      ],
    );
  }

  Widget CutomText(String header, String time) {
    return Column(
      children: [
        Text(
          header,
          style: TextStyle(fontSize: 6, fontWeight: FontWeight.bold),
        ),
        Text(
          time,
          style: TextStyle(color: Kgrey, fontSize: 6),
        ),
      ],
    );
  }
}
