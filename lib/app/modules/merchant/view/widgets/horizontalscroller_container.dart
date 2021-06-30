import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/conts.dart';

class HorizontalCardMerch extends StatelessWidget {
  const HorizontalCardMerch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => _CustomContainer(),
      ),
    );
  }

  Widget _CustomContainer() {
    return Container(
      child: Container(
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(3),
        width: 120,
        child: Center(
            child: Text(
          "Free Home Delivery on order above 3000",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 10),
        )),
        decoration: kInnerDecoration,
      ),
      height: 66.0,
      decoration: kGradientBoxDecoration,
    );
  }
}
