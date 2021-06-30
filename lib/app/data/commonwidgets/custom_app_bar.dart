import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(soooperimg),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage(
              usrimg,
            ),
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage(
              qrcodeimg,
            ),
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage(
              messageimg,
            ),
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
