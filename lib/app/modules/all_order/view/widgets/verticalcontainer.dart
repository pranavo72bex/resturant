import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/all_order/view/widgets/horizontal_time.dart';
import 'package:restaurantsapp/app/modules/all_order/view/widgets/horizontal_timeline.dart';

class VerticalContainer extends StatelessWidget {
  const VerticalContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 327,
      height: 140,
      decoration: BoxDecoration(
        border: Border.all(
          color: bordercolor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _RowtextButton("Order ID : 1000043216", "Set as favouite", Kblue),
          Text(
            "Majha Morya",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          _RowtextButton("3 items   Rs. 3001", "Pay for Order", Kblack),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "View Details",
                style: TextStyle(
                  color: Kblue,
                  fontSize: 8,
                ),
              ),
              Spacer(),
              Container(
                width: 60,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: bordercolor),
                ),
                child: Center(
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                width: 60,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kgreen,
                ),
                child: Center(
                  child: Text(
                    "Reorder",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          HorizontalTimeLine(),
          SizedBox(height: 5),
          HorizontalTimeText(),
        ],
      ),
    );
  }

  Widget _RowtextButton(String text, String button, dynamic color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        Container(
          padding: EdgeInsets.all(3),
          width: 126,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          child: Center(
            child: Text(
              button,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
