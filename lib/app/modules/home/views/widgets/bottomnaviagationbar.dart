import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/all_order/view/all_orderpage.dart';
import 'package:restaurantsapp/app/modules/home/views/home_view.dart';
import 'package:restaurantsapp/app/modules/merchant/view/merchant_page.dart';
import 'package:restaurantsapp/app/modules/notification/notification_page.dart';

class AppNavigator extends StatefulWidget {
  @override
  _AppNavigatorState createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomeView(),
    AllOrder(),
    MerchantPage(),
    NotificationPage(),
  ];
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          iconSize: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                AssetImage("assets/icons/home.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                AssetImage("assets/icons/shoppingcart.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                AssetImage("assets/icons/shoppingbag.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: ImageIcon(
                AssetImage("assets/icons/bell.png"),
              ),
            ),
          ],
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}
