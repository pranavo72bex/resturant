import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';

class MerchantverticalCard extends StatelessWidget {
  const MerchantverticalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 0.3)),
      padding: EdgeInsets.all(8),
      height: 220,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/icons/cross.png"),
                Text(
                  "Red velvet cake[Double Layer]",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("in waffle cake"),
                Text("₹499.99"),
                customtextcontainer(),
                Text(
                  "long description about the product",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset("assets/images/birimage.png"),
              ),
              Positioned(
                left: 32,
                bottom: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 40,
                  width: 80,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget customtextcontainer() {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(color: korange),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        "Bestseller",
        style: TextStyle(color: korange),
      ),
    );
  }
}
