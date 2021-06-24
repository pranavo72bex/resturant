import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/inputtextfield.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/widgets/textheader.dart';

class MywalletPage extends StatelessWidget {
  const MywalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeAppbar(),
            SizedBox(height: 10),
            Textheaderpage(),
            SizedBox(height: 10),
            InputTextfieldmoney(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Transactions History"),
            ),
            customContainerText(
                "You have added to wallet: 1000", kgreybackground),
            customContainerText("You have paid to Merchant: 675", kwhite),
            customContainerText(
                "You have received refund: 295", kgreybackground)
          ],
        ),
      ),
    );
  }

  Widget customContainerText(String text, dynamic color) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: double.infinity,
      color: color,
      child: Text(text),
    );
  }
}
