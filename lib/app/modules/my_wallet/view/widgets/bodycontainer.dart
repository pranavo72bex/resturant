import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Transactions History"),
        ),
        customContainerText("You have added to wallet: 1000", kgreybackground),
        customContainerText("You have paid to Merchant: 675", kwhite),
        customContainerText("You have received refund: 295", kgreybackground)
      ],
    );
  }

  Widget customContainerText(String text, dynamic color) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: double.infinity,
      color: color,
      child: Text(text),
    );
  }
}
