import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/constants/color_const.dart';
import 'package:restaurantsapp/app/data/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/auth/login/view/login_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 309,
          child: TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 38),
              suffixIcon: customButtonarrow(),
              hintText: "Mobile Number",
              hintStyle: TextStyle(
                color: Kblack,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 55,
          width: 309,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 38),
              hintText: "Enter OTP",
              hintStyle: TextStyle(
                color: Kgrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => LoginPage());
            },
            child: Text(
              "submit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget customButtonarrow() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Kblue,
        ),
        child: ImageIcon(
          AssetImage(arrowimg),
          color: Colors.white,
        ),
      ),
    );
  }
}
