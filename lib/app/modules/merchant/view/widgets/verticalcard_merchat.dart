import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';

class MerchantverticalCard extends StatelessWidget {
  const MerchantverticalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 0.3)),
      padding: EdgeInsets.all(8),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BodyTextContainer(),
              ],
            ),
          ),
          StackImageContainer(),
        ],
      ),
    );
  }

  Widget StackImageContainer() {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.only(bottom: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset("assets/images/birimage.png"),
          ),
        ),
        Positioned(
          left: 25,
          bottom: 4,
          child: Stack(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: korange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 25,
                  width: 50,
                  child: Center(
                    child: Text(
                      "ADD",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 3,
                top: 3,
                child: Image.asset(
                  addimg,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
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
        style: TextStyle(color: korange, fontSize: 10),
      ),
    );
  }

  Widget BodyTextContainer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          vegimg,
          height: 20,
          width: 20,
        ),
        Text(
          "Red velvet cake[Double Layer]",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
        Text(
          "in waffle cake",
          style: TextStyle(fontSize: 10),
        ),
        Text(
          "₹499.99",
          style: TextStyle(fontSize: 10),
        ),
        customtextcontainer(),
        Text(
          "This is my favorite Red Velvet Cake recipe! This cake is incredibly soft, moist, buttery, and topped with an easy cream cheese frosting.",
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
