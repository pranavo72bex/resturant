import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';

class CustomappbarMerch extends StatelessWidget {
  const CustomappbarMerch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              boxshadow,
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Belgium Waffle",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Dessert Belgium waffle",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage("assets/icons/shoppingcart.png"),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage("assets/icons/flag.png"),
          ),
        )
      ],
    );
  }
}
