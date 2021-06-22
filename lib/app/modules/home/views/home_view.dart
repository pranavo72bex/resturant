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
          child: Column(
            children: [
              CustomeAppbar(),
              SizedBox(
                height: 5,
              ),
              SearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
