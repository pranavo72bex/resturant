import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/commonwidgets/custom_app_bar.dart';
import 'package:restaurantsapp/app/modules/all_order/view/all_orderpage.dart';
import 'package:restaurantsapp/app/modules/home/controllers/bottom_naviation_controller.dart';
import 'package:restaurantsapp/app/modules/home/views/home_view.dart';
import 'package:restaurantsapp/app/modules/merchant/view/merchant_page.dart';
import 'package:restaurantsapp/app/modules/notification/notification_page.dart';

BottomNavigationController bottomNavigationController = Get.find();

// ignore: must_be_immutable
class AppNavigator extends StatelessWidget {
  List<Widget> _pages = [
    HomeView(),
    AllOrder(),
    MerchantPage(),
    NotificationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: Obx(
        () => Container(
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
            currentIndex: bottomNavigationController.initialState.value,
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
            onTap: (index) {
              bottomNavigationController.changeState(index);
            },
          ),
        ),
      ),
      body: Obx(() => _pages[bottomNavigationController.initialState.value]),
    );
  }
}
