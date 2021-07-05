import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/my_report/view/myreport_page.dart';
import 'package:restaurantsapp/app/modules/my_rewards/view/my_rewardspage.dart';
import 'package:restaurantsapp/app/modules/my_wallet/view/my_walletpage.dart';
import 'package:restaurantsapp/app/modules/orders/view/order_screen.dart';

class HomeButtomCard extends StatelessWidget {
  const HomeButtomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            bottomsheetimg,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.to(MywalletPage());
                },
                child: _Custombottomsheetbuttons(text: "Wallet"),
              ),
              InkWell(
                onTap: () {
                  Get.to(MyRewards());
                },
                child: _Custombottomsheetbuttons(text: "Rewards"),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => OrderPage());
                },
                child: _Custombottomsheetbuttons(text: "Orders"),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => MyReportPage());
                },
                child: _Custombottomsheetbuttons(text: "Reports"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Link your 10 friends by sharing and earn waive off from delivery cost up to 2 months Our delivery charges (Re. 1 to Rs. 100 - Rs. 10 charge)",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Kblue,
                  ),
                  child: Image.asset(
                    bottomsheetstarimg,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 24,
                width: 103,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Kblack,
                  ),
                ),
                child: Center(
                    child: Text(
                  "SOOOOPER182",
                  style: TextStyle(fontSize: 10),
                )),
              ),
              Text(
                "Share on",
                style: TextStyle(fontSize: 10),
              ),
              Image.asset(
                socialimage,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Custombottomsheetbuttons extends StatelessWidget {
  const _Custombottomsheetbuttons({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 15),
      height: 24,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Kblack,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
