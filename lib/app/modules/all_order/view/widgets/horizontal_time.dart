import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class HorizontalTimeText extends StatelessWidget {
  const HorizontalTimeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _Customtext(
          header: "Order Accepted",
          time: "20/02/021",
        ),
        _Customtext(
          header: "Order Processing",
          time: "20/02/021",
        ),
        _Customtext(
          header: "Out For Delivery",
          time: "20/02/021",
        ),
        _Customtext(
          header: "Yet to be delivered",
          time: "20/02/021",
        ),
      ],
    );
  }
}

class _Customtext extends StatelessWidget {
  const _Customtext({
    Key? key,
    required this.header,
    required this.time,
  }) : super(key: key);

  final String header;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          header,
          style: TextStyle(fontSize: 6, fontWeight: FontWeight.bold),
        ),
        Text(
          time,
          style: TextStyle(color: Kgrey, fontSize: 6),
        ),
      ],
    );
  }
}
