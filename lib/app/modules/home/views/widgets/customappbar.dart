import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/commonheard.dart';

class CustomeAppbar extends StatelessWidget {
  const CustomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScoooperLin(),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage("assets/icons/usrs.png"),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage("assets/icons/qrcode.png"),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage("assets/icons/message.png"),
          ),
        ),
      ],
    );
  }
}
