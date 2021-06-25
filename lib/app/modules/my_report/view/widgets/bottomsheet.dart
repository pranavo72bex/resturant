import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';

// ignore: must_be_immutable
class CustomBottomSheet extends StatelessWidget {
  String groupvalue = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.42,
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
                  () => Get.back();
                },
                child: Image.asset("assets/icons/cross.png"),
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
                Radio(value: null, groupValue: groupvalue, onChanged: null),
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
                Radio(value: null, groupValue: groupvalue, onChanged: null),
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
                Radio(value: null, groupValue: groupvalue, onChanged: null),
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
                Radio(value: null, groupValue: groupvalue, onChanged: null),
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
