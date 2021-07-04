import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/core/commonwidgets/horizontal_strip.dart';
import 'package:restaurantsapp/app/core/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/modules/orders/view/widgets/listofusrs.dart';
import 'package:restaurantsapp/app/modules/orders/view/widgets/searchbar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomSearch(),
                  SizedBox(
                    height: 10,
                  ),
                  bodytext(),
                  ListofUsers(),
                ],
              ),
            ),
            SideFloatingBtn()
          ],
        ),
      ),
    );
  }

  Widget bodytext() {
    return Horizontalstrip(
      text: "Primary Order",
    );
  }
}
