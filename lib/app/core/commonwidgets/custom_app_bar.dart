import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/users_profile/view/usrs_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        height: 50,
        width: 140,
        child: Image.asset(soooperimg),
      ),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () {
            Get.to(() => UsersInfo());
          },
          icon: Container(
            child: ImageIcon(
              AssetImage(
                usrimg,
              ),
              color: Colors.black,
            ),
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
