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
          Container(
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last 30 Days"),
                Obx(
                  () => Radio(
                    value: '1',
                    groupValue: radioButtonController.groupValue.value,
                    onChanged: (value) {
                      return radioButtonController.ChangeValue(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last 3 Months"),
                Obx(
                  () => Radio(
                    value: '2',
                    groupValue: radioButtonController.groupValue.value,
                    onChanged: (value) {
                      return radioButtonController.ChangeValue(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last 6 Months"),
                Obx(
                  () => Radio(
                    value: "3",
                    groupValue: radioButtonController.groupValue.value,
                    onChanged: (value) {
                      return radioButtonController.ChangeValue(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Overall"),
                Obx(
                  () => Radio(
                    value: "4",
                    groupValue: radioButtonController.groupValue.value,
                    onChanged: (value) {
                      return radioButtonController.ChangeValue(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 112,
                decoration: BoxDecoration(
                  border: Border.all(color: Kblue),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Clear"),
                ),
              ),
              Container(
                height: 40,
                width: 112,
                decoration: BoxDecoration(
                  color: Kblue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Apply",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
