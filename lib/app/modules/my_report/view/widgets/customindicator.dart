import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';

class CutomIndicator extends StatelessWidget {
  const CutomIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIndicator("Restaurant", Kblue, kwhite),
        CustomIndicator("Grocery", korange, kwhite),
        CustomIndicator("Medicines", kred, kwhite),
        CustomIndicator("Bakery", klime, kwhite),
      ],
    );
  }

  Widget CustomIndicator(
    String text,
    dynamic indicolor,
    dynamic bgcolor,
  ) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: double.infinity,
      color: bgcolor,
      child: Row(
        children: [
          Container(
            height: 8,
            width: 8,
            color: indicolor,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
