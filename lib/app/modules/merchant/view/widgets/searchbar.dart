import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchbarMerchant extends StatelessWidget {
  const SearchbarMerchant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: ImageIcon(
                    AssetImage("assets/icons/search.png"),
                  ),
                  hintText: "Search"),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage("assets/icons/Category.png"),
            ),
          ),
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                ),
              );
            },
            icon: ImageIcon(
              AssetImage("assets/icons/filter.png"),
            ),
          ),
        ],
      ),
    );
  }
}
