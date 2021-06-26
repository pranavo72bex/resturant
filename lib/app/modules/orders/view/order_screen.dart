import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/orders/view/widgets/customapp.dart';
import 'package:restaurantsapp/app/modules/orders/view/widgets/listofusrs.dart';
import 'package:restaurantsapp/app/modules/orders/view/widgets/searchbar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomApp(),
              CustomSearch(),
              bodytext(),
              ListofUsers(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodytext() {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: double.infinity,
      color: kgreybackground,
      child: Text(
        "Primary Order",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
