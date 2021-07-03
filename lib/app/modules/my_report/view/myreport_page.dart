import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/core/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/customindicator.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/myreport_headertext.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/pichart_page.dart';

class MyReportPage extends StatelessWidget {
  const MyReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  MyReportHeader(),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 270,
                    width: 270,
                    child: PicharScreen(),
                  ),
                  SizedBox(height: 10),
                  bodyText(),
                  CutomIndicator()
                ],
              ),
              SideFloatingBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget bodyText() {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 8),
      height: 40,
      width: double.infinity,
      color: kgreybackground,
      child: Text(
        "Total Spent : Rs 21658 ",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
