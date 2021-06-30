import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/feeds/views/widgets/horizotalsliderimage.dart';
import 'package:restaurantsapp/app/modules/feeds/views/widgets/sidefloatingbtn.dart';
import 'package:restaurantsapp/app/modules/feeds/views/widgets/verticalsliderimage.dart';
import 'package:restaurantsapp/app/modules/orders/view/widgets/customapp.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Offers",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Explore the Offers in your nearby store"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 136,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            HorizontalSliderImage(),
                        itemCount: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Feeds",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Explore the Offers in your nearby store"),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) => VerticalSliderImage(),
                      itemCount: 10,
                    ),
                  ],
                ),
              ),
            ),
            FloatingSidebutton()
          ],
        ),
      ),
    );
  }
}
