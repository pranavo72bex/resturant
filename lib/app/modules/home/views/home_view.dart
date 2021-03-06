import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/center_text_widgets.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/searchbar.dart';
import 'package:restaurantsapp/app/modules/home/views/widgets/side_floating_buttons.dart';

class HomeView extends StatelessWidget {
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
                  SizedBox(
                    height: 5,
                  ),
                  SearchBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        CenterTextwidget(),
                      ],
                    ),
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
            SideFloatingButtons()
          ],
        ),
      ),
    );
  }
}
