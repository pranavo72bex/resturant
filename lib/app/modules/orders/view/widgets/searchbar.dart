import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: ImageIcon(
            AssetImage(
              searchimg,
            ),
          ),
        ),
      ),
    );
  }
}
