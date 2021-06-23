import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';
import 'package:restaurantsapp/app/modules/near_by/view/widgets/side_floating_button.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomeAppbar(),
                  Container(
                    height: 500,
                  ),
                  Container(
                    height: 500,
                    color: Colors.red,
                  )
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
