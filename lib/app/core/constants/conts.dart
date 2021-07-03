import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'color_const.dart';

const bodytext = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 26,
);
const link = TextStyle(
  color: Colors.blue,
  fontWeight: FontWeight.w900,
  fontSize: 24,
);

//shadow

const boxshadow = BoxShadow(
  color: Kgrey,
  blurRadius: 4,
  offset: Offset(1, 1), // Shadow position
);

final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(
    color: Colors.white,
  ),
  borderRadius: BorderRadius.circular(18),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Kblue.withOpacity(0.8),
      Colors.teal.withOpacity(0.3),
    ],
  ),
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(18),
);
