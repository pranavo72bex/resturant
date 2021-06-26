import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/customappbarmerch.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/horizontalscroller_container.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/searchbar.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/verticalcard_merchat.dart';

class MerchantPage extends StatefulWidget {
  const MerchantPage({Key? key}) : super(key: key);

  @override
  _MerchantPageState createState() => _MerchantPageState();
}

class _MerchantPageState extends State<MerchantPage>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabBarController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabBarController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, _) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomappbarMerch(),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  color: kgreybackground,
                  child: TabBar(
                    indicatorColor: Colors.grey,
                    labelColor: Colors.black,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.normal),
                    controller: _tabBarController,
                    tabs: [
                      Tab(text: 'Takeaway'),
                      Tab(text: 'Dine in'),
                      Tab(text: 'Delivery'),
                      Row(
                        children: [
                          Tab(text: 'Profile'),
                          SizedBox(width: 5),
                          Image.asset("assets/icons/Star.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabBarController,
            children: [
              ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorizontalCardMerch(),
                  SearchbarMerchant(),
                  ListView.builder(
                    itemCount: 10,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => MerchantverticalCard(),
                  )
                  // MerchantverticalCard(),
                  // MerchantverticalCard(),
                  // MerchantverticalCard(),
                ],
              ),
              Center(child: Text("Dine in")),
              Center(child: Text("Delivery")),
              Center(child: Text("Profile")),
            ],
          ),
        ),
      ),
    );
  }
}
