import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Hello,Rohan Good Morning !!!",
        suffixIcon: Icon(
          FontAwesomeIcons.search,
        ),
      ),
    );
  }
}
