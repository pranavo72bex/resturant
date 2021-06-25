import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/searchbar.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/verticalcard_merchat.dart';

import 'horizontalscroller_container.dart';

class CustomTabbarMerch extends StatelessWidget {
  const CustomTabbarMerch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: kgreytab,
                  padding: EdgeInsets.only(bottom: 10),
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Kgrey,
                    labelColor: Kblue,
                    labelStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    unselectedLabelColor: Kblack,
                    tabs: [
                      Tab(text: 'Takeaway'),
                      Tab(text: 'Dine in'),
                      Tab(text: 'Delivery'),
                      Row(
                        children: [
                          Tab(text: 'Profile '),
                          SizedBox(height: 5),
                          Image.asset("assets/icons/Star.png"),
                          Text(
                            "4.9",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500, //height of TabBarView
                  child: TabBarView(
                    children: [
                      _bodyContainerTakeaway(),
                      _bodyContainer("Dine in"),
                      _bodyContainer("Delivery"),
                      _bodyContainer("Profile"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyContainerTakeaway() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HorizontalCardMerch(),
          SearchbarMerchant(),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     "Menu",
          //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          //   ),
          // ),
          MerchantverticalCard()
        ],
      ),
    );
  }

  Widget _bodyContainer(String text) {
    return Container(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
