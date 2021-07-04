import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/core/commonwidgets/horizontal_strip.dart';
import 'package:restaurantsapp/app/core/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/my_rewards/view/widgets/scratchcard.dart';

class MyRewards extends StatelessWidget {
  const MyRewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Horizontalstrip(
                text: 'My Rewards',
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => ScratchCard(),
                ),
              )
            ],
          ),
          SideFloatingBtn()
        ]),
      ),
    );
  }
}
