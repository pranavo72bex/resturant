import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/searchbar.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/verticalcard_merchat.dart';

import 'horizontalscroller_container.dart';

class CustomTabbarMerch extends StatelessWidget {
  const CustomTabbarMerch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: kgreytab,
            padding: EdgeInsets.only(bottom: 10),
            child: TabBar(
              isScrollable: true,
              indicatorColor: Kgrey,
              labelColor: Kblue,
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              unselectedLabelColor: Kblack,
              tabs: [
                Tab(text: 'Takeaway'),
                Tab(text: 'Dine in'),
                Tab(text: 'Delivery'),
                Row(
                  children: [
                    Tab(text: 'Profile '),
                    SizedBox(height: 10),
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
          TabBarView(
            children: [
              bodyContainerTakeaway(),
              bodyContainer("Dine in"),
              bodyContainer("Delivery"),
              bodyContainer("Profile"),
            ],
          ),
        ],
      ),
    );
  }

  Widget bodyContainerTakeaway() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HorizontalCardMerch(),
        // SearchbarMerchant(),
        // MerchantverticalCard(),
        // MerchantverticalCard(),
        // MerchantverticalCard(),
      ],
    );
  }

  Widget bodyContainer(String text) {
    return Center(
      child: Text(text),
    );
  }
}
