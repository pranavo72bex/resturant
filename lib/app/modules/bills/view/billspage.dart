import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/core/commonwidgets/horizontal_strip.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

class BillPages extends StatelessWidget {
  const BillPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          DestinationShop(
            name: "KFC",
            place: "3 items ETA 54 mins",
            icon: shop,
          ),
          DestinationShop(
            name: "Anju",
            place: "Gurugram , Delhi NCR, India",
            icon: googlemapindiacator,
          ),
          Horizontalstrip(
            text: "PREFERED PAYMENT",
          ),
          AmountNumber(),
          SizedBox(
            height: 50,
            width: 327,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("PAY ₹830"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Horizontalstrip(
            text: "WALLET",
          ),
          Paymentgateway(
              img: amazonpay, pay: "Amazon Pay", amt: "Link Your Account"),
          Paymentgateway(
              img: googlepay, pay: "google Pay", amt: "Link Your Account"),
          Paymentgateway(
              img: phonepay, pay: "Phone Pay", amt: "Link Your Account"),
          Paymentgateway(
              img: mobicon, pay: "MobiKwki", amt: "Link Your Account"),
          Paymentgateway(
              img: freeicon, pay: "Free Charge", amt: "Link Your Account"),
          Horizontalstrip(
            text: "CREDIT/DEBIT CARD",
          ),
        ],
      ),
    );
  }

  Row AmountNumber() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Account Number"),
        ),
        Spacer(),
        Text("₹830"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.check_box_rounded,
          ),
        )
      ],
    );
  }
}

class DestinationShop extends StatelessWidget {
  const DestinationShop({
    Key? key,
    required this.name,
    required this.place,
    this.icon,
  }) : super(key: key);

  final String name;
  final String place;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 20,
            width: 20,
          ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                place,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Paymentgateway extends StatelessWidget {
  const Paymentgateway({
    Key? key,
    required this.img,
    required this.pay,
    required this.amt,
  }) : super(key: key);

  final img;
  final String pay;
  final String amt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            img,
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(pay),
          Spacer(),
          Text(
            amt,
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
