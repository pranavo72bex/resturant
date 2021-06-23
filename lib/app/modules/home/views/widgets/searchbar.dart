import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Hello,Rohan Good Morning !!!",
          suffixIcon: ImageIcon(AssetImage("assets/icons/search.png"))),
    );
  }
}
