import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/customappbarmerch.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/customtabbar_mer.dart';
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
                child: TabBar(
                  labelColor: Colors.red,
                  controller: _tabBarController,
                  tabs: [
                    Tab(text: 'Takeaway'),
                    Tab(text: 'Dine in'),
                    Tab(text: 'Delivery'),
                    Tab(
                      text: 'Profile',
                      icon: Image.asset("assets/icons/Star.png"),
                    ),
                  ],
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
                  MerchantverticalCard(),
                  MerchantverticalCard(),
                  MerchantverticalCard(),
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
