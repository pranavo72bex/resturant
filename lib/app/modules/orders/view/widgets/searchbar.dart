import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: ImageIcon(
            AssetImage("assets/icons/search.png"),
          ),
        ),
      ),
    );
  }
}
