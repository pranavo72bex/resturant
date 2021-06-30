import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/commonwidgets/side_floating_button.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/customindicator.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/myreport_headertext.dart';
import 'package:restaurantsapp/app/modules/my_report/view/widgets/pichart_page.dart';

class MyReportPage extends StatelessWidget {
  const MyReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(soooperimg),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                usrimg,
              ),
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                qrcodeimg,
              ),
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                messageimg,
              ),
              color: Colors.black,
            ),
          )
        ],
      ),
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
