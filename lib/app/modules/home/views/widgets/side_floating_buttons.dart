import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/modules/feeds/views/feeds_view.dart';
import 'package:restaurantsapp/app/modules/near_by/view/near_by_page.dart';

import 'home_buttomcard.dart';

class SideFloatingButtons extends StatelessWidget {
  const SideFloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: 0,
      child: Row(
        children: [
          RotatedBox(
            quarterTurns: -1,
            child: Container(
              height: 34,
              width: 275,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(
                        () => FeedsPage(),
                      );
                    },
                    child: Text(
                      'Feeds',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.bottomSheet(
                        HomeButtomCard(),
                      );
                    },
                    child: Text(
                      'Offers',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'New products',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 1,
            child: Container(
              height: 30,
              width: 132,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 5, top: 5),
                child: InkWell(
                  onTap: () => Get.to(
                    () => NearByPage(),
                  ),
                  child: Center(
                    child: Text(
                      'Near By',
                      style: TextStyle(
                        color: Kblack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
