import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/near_by/view/widgets/custom_topbar.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(soooperimg),
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
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomTopBar(),
                ],
              ),
            ),
            SideFloatingBtn()
          ],
        ),
      ),
    );
  }
}
