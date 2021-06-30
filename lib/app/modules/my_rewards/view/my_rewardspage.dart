import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
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
              Container(
                padding: EdgeInsets.all(8),
                height: 40,
                width: double.infinity,
                color: kgreybackground,
                child: Text(
                  "My Rewards",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
