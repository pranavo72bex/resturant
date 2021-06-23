import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/commonwidgets/customappbar.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/near_by/view/widgets/side_floating_button.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomeAppbar(),
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          DefaultTabController(
                            length: 7, // length of tabs
                            initialIndex: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  color: kgreytab,
                                  child: TabBar(
                                    isScrollable: true,
                                    indicatorColor: Colors.grey[400],
                                    labelColor: Kblue,
                                    unselectedLabelColor: Colors.black,
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
                                        child: Center(
                                          child: Text('All',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Hotel',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Groceries',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Bakery',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Dairy',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('Medicines',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text('DHardware',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: 500,
                  ),
                  Container(
                    height: 500,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            SideFloatingBtn()
          ],
        ),
      ),
    );
  }
}
