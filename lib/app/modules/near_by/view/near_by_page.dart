import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';
import 'package:restaurantsapp/app/modules/near_by/view/widgets/custom_topbar.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/side_floating_button.dart';

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomeAppbar(), //cutomtopbar and body
                  ),
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
