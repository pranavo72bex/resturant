import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 327,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 11),
          hintText: "Hello,Rohan Good Morning !!!",
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
