import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/data/constants/conts.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        DefaultTabController(
          length: 7, // length of tabs
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: kgreytab,
                padding: EdgeInsets.only(bottom: 10),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.grey[400],
                  labelColor: Kblue,
                  unselectedLabelColor: Kblack,
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Hotel'),
                    Tab(text: 'Groceries'),
                    Tab(text: 'Bakery'),
                    Tab(text: 'Dairy'),
                    Tab(text: 'Medicines'),
                    Tab(text: 'Hardware'),
                  ],
                ),
              ),
              Container(
                height: 500, //height of TabBarView
                child: TabBarView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Near by",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sort by",
                              )
                            ],
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                              ),
                              itemCount: 20,
                              itemBuilder: (context, index) =>
                                  _customcontainer(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _bodyContainer("Hotel"),
                    _bodyContainer("Bakery"),
                    _bodyContainer("Dairy"),
                    _bodyContainer("Medicines"),
                    _bodyContainer("Hardware"),
                    _bodyContainer("Hardware"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _bodyContainer(String text) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _customcontainer() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [boxshadow],
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Image.asset(
            addimg,
          ),
        )
      ],
    );
  }
}
