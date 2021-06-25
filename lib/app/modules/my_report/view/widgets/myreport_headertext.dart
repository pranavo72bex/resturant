import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/bottomsheet.dart';

class MyReportHeader extends StatelessWidget {
  const MyReportHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: double.infinity,
      color: kgreybackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "My Report",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Last 30 Days",
          ),
          InkWell(
            onTap: () {
              Get.bottomSheet(
                CustomBottomSheet(),
              );
            },
            child: Container(
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: bordercolor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "Sort",
                  style: TextStyle(color: Kblue),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
