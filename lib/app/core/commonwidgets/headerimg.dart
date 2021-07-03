import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      soooperimg,
    );
  }
}
