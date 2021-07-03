import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/conts.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/near_by/view/widgets/header_text.dart';

class TabControllerBody extends StatelessWidget {
  const TabControllerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500, //height of TabBarView
      child: TabBarView(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderText(),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) => _customcontainer(),
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
            boxShadow: [
              boxshadow,
            ],
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
