import 'dart:ui';

import 'package:flutter/material.dart';

class VerticalSliderImage extends StatelessWidget {
  const VerticalSliderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: 338,
          height: 147,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage('assets/images/cardimage.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Container(
                height: 41,
                width: 333,
                color: Colors.black.withOpacity(0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Like", style: TextStyle(color: Colors.white)),
                    Text("comment", style: TextStyle(color: Colors.white)),
                    Text("share", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
