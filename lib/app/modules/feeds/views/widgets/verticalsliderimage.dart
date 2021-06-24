import 'package:flutter/material.dart';

class VerticalSliderImage extends StatelessWidget {
  const VerticalSliderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 280,
      height: 147,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('assets/images/cardimage.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
