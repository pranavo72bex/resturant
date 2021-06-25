import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';

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
      margin: EdgeInsets.all(5),
      width: 120,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 5, color: Kblue.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          "Free Home Delivery on order above 3000",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
