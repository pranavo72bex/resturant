import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
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
          _RowtextButton(
            text: "Order ID : 1000043216",
            button: "Set as favouite",
            color: Kblue,
          ),
          Text(
            "Majha Morya",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          _RowtextButton(
            text: "3 items   Rs. 3001",
            button: "Pay for Order",
            color: Kblack,
          ),
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
              _CancelRecordButtons(
                text: 'Cancel',
                color: kwhite,
              ),
              SizedBox(
                width: 6,
              ),
              _CancelRecordButtons(
                text: 'Recorders',
                color: kgreen,
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
}

class _CancelRecordButtons extends StatelessWidget {
  const _CancelRecordButtons({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: bordercolor),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 8),
        ),
      ),
    );
  }
}

class _RowtextButton extends StatelessWidget {
  const _RowtextButton({
    Key? key,
    required this.text,
    required this.button,
    required this.color,
  }) : super(key: key);

  final String text;
  final String button;
  final color;

  @override
  Widget build(BuildContext context) {
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
