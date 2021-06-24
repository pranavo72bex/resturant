import 'package:flutter/material.dart';

class HorizontalSliderImage extends StatelessWidget {
  const HorizontalSliderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('assets/images/birimage.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
