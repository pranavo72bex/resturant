import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/all_order/view/widgets/search_order.dart';
import 'package:restaurantsapp/app/modules/all_order/view/widgets/verticalcontainer.dart';

class AllOrder extends StatefulWidget {
  const AllOrder({Key? key}) : super(key: key);

  @override
  _AllOrderState createState() => _AllOrderState();
}

class _AllOrderState extends State<AllOrder>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabBarController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabBarController = TabController(length: 2, vsync: this);
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
                child: TabBar(
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal),
                  controller: _tabBarController,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    CustomTabContainer(
                      text: 'All Orders',
                    ),
                    CustomTabContainer(
                      text: 'Favourite Orders',
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabBarController,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        SearchOrder(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Current Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 10),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) => VerticalContainer(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        SearchOrder(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Favourite Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 10),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) => VerticalContainer(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabContainer extends StatelessWidget {
  const CustomTabContainer({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        color: kgreybackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Tab(text: text),
    );
  }
}
