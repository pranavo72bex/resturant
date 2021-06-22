import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/customappbar.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/searchbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomeAppbar(),
                  SizedBox(
                    height: 5,
                  ),
                  SearchBar(),
                  Container(
                    height: 500,
                    color: Colors.white,
                  ),
                  Container(
                    height: 500,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 500,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              left: 0,
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(20),
                          bottomEnd: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Feeds',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Offers',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'New products',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(20),
                            bottomEnd: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 5, top: 5),
                          child: Text(
                            'Near By',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
