import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/feeds/views/feeds_view.dart';
import 'package:restaurantsapp/app/modules/near_by/view/near_by_page.dart';

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
                      Get.to(() => FeedsPage());
                    },
                    child: Text(
                      'Feeds',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Offers',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'New products',
                      style: TextStyle(color: Colors.grey),
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
                  onTap: () => Get.to(() => NearByPage()),
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
        ],
      ),
    );
  }
}
