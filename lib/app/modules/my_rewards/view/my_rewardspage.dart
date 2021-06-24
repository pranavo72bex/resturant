import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/my_rewards/view/widgets/scratchcard.dart';

class MyRewards extends StatelessWidget {
  const MyRewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomeAppbar(),
            Container(
              padding: EdgeInsets.all(8),
              height: 40,
              width: double.infinity,
              color: kgreybackground,
              child: Text("My Rewards"),
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
      ),
    );
  }
}
