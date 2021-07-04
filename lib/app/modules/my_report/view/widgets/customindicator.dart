import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class CutomIndicator extends StatelessWidget {
  const CutomIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIndicator(
          text: "Restaurant",
          indicolor: Kblue,
        ),
        _CustomIndicator(
          text: "Grocery",
          indicolor: korange,
          bgcolor: kgreybackground,
        ),
        _CustomIndicator(
          text: "Medicines",
          indicolor: kred,
        ),
        _CustomIndicator(
          text: "Bakery",
          indicolor: klime,
          bgcolor: kgreybackground,
        ),
      ],
    );
  }
}

class _CustomIndicator extends StatelessWidget {
  const _CustomIndicator({
    Key? key,
    required this.text,
    required this.indicolor,
    this.bgcolor,
  }) : super(key: key);

  final String text;
  final indicolor;
  final bgcolor;

  @override
  Widget build(BuildContext context) {
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
