import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/commonheard.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/customappbar.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/searchbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned.fill(
                left: 0,
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {}, child: Text('Shop')),
                          TextButton(onPressed: () {}, child: Text('Order')),
                          TextButton(onPressed: () {}, child: Text('Bag')),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Column(
                children: [
                  CustomeAppbar(),
                  SizedBox(
                    height: 5,
                  ),
                  SearchBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
