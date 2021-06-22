import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';

class ScoooperLin extends StatelessWidget {
  const ScoooperLin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Sooooper",
          style: sooper,
        ),
        Text(
          "Link",
          style: link,
        ),
      ],
    );
  }
}
