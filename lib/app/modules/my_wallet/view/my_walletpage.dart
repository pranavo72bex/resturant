import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/bodycontainer.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/inputtextfield.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/textheader.dart';

class MywalletPage extends StatelessWidget {
  const MywalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
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
