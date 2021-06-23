import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeAppbar(),
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
            Text("Explore the Offers in your nearby store"),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 136,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => horizontalSliderimage(),
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget horizontalSliderimage() {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('assets/images/birimage.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
