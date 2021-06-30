import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/bodycontainer.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/inputtextfield.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/textheader.dart';

class MywalletPage extends StatelessWidget {
  const MywalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Textheaderpage(),
                SizedBox(height: 10),
                InputTextfieldmoney(),
                SizedBox(height: 10),
                BodyContainer(),
              ],
            ),
            SideFloatingBtn(),
          ],
        ),
      ),
    );
  }
}
