import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

class SearchbarMerchant extends StatelessWidget {
  const SearchbarMerchant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12),
                  suffixIcon: ImageIcon(
                    AssetImage(
                      searchimg,
                    ),
                  ),
                  hintText: "Search",
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage(
                Categoryimg,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                ),
              );
            },
            icon: ImageIcon(
              AssetImage(
                filterimg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
