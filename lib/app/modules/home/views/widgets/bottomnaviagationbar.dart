import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurantsapp/app/modules/home/views/home_view.dart';
import 'package:restaurantsapp/app/modules/notification/notification_page.dart';
import 'package:restaurantsapp/app/modules/shopping_bag.dart/shopping_bag_pag.dart';
import 'package:restaurantsapp/app/modules/shopping_cart.dart/view/shopping_page.dart';

class AppNavigator extends StatefulWidget {
  @override
  _AppNavigatorState createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomeView(),
    ShoppingCart(),
    ShoppingBagePage(),
    NotificationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.shoppingCart,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.shoppingBag,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              FontAwesomeIcons.bell,
              color: Colors.black,
            ),
          ),
        ],
        onTap: (index) => setState(() => _currentIndex = index),
      ),
      body: _pages[_currentIndex],
    );
  }
}
