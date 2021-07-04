import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';

class SearchOrder extends StatelessWidget {
  const SearchOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String groupvalue = '';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: ImageIcon(
                  AssetImage(
                    searchimg,
                  ),
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                padding: EdgeInsets.all(10),
                height: 240,
                width: 328,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.99),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filter by",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            crossimg,
                            height: 20,
                            width: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Last 30 Days"),
                          Radio(
                              value: null,
                              groupValue: groupvalue,
                              onChanged: null),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Last 3 Months"),
                          Radio(
                            value: true,
                            groupValue: groupvalue,
                            onChanged: null,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Last 6 Months"),
                          Radio(
                              value: null,
                              groupValue: groupvalue,
                              onChanged: null),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Overall"),
                          Radio(
                              value: null,
                              groupValue: groupvalue,
                              onChanged: null),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 112,
                          decoration: BoxDecoration(
                            border: Border.all(color: Kblue),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text("Clear"),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 112,
                          decoration: BoxDecoration(
                            color: Kblue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Apply",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          icon: ImageIcon(
            AssetImage(
              filterimg,
            ),
          ),
        )
      ],
    );
  }
}
