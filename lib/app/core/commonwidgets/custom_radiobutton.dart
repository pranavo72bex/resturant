import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/all_order/view/widgets/search_order.dart';

class CustomRadioButtons extends StatelessWidget {
  const CustomRadioButtons({
    Key? key,
    required this.groupvalue,
    required this.text,
    required this.value,
  }) : super(key: key);

  final String groupvalue;
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Obx(() => Radio(
                value: value,
                groupValue: radioButtonController.initialvalue.value,
                onChanged: (value) {
                  return radioButtonController.changeOnClick(value);
                },
              )),
        ],
      ),
    );
  }
}

class CustomButtonBottomSheet extends StatelessWidget {
  const CustomButtonBottomSheet({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 112,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Kblue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
