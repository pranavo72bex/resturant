import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/modules/near_by/view/widgets/custom_topbar.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
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
