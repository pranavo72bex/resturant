import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/my_report/controller/radio_button_controller.dart';

RadioButtonController radioButtonController = Get.put(RadioButtonController());

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "History",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  crossimg,
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          _customRadioButton(
            text: "Last 24 hrs",
            value: '1',
          ),
          _customRadioButton(
            text: "Last 3 days",
            value: '2',
          ),
          _customRadioButton(
            text: "Last 7 days",
            value: '3',
          ),
          _customRadioButton(
            text: "Last a month",
            value: '4',
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: _customButtonbottomsheet(text: "Clear"),
              ),
              InkWell(
                onTap: () {},
                child: _customButtonbottomsheet(text: "Apply", color: Kblue),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _customButtonbottomsheet extends StatelessWidget {
  const _customButtonbottomsheet({
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
        child: Text(text),
      ),
    );
  }
}

class _customRadioButton extends StatelessWidget {
  const _customRadioButton({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);
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
          Obx(
            () => Radio(
              value: value,
              groupValue: radioButtonController.groupValue.value,
              onChanged: (value) {
                return radioButtonController.ChangeValue(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
