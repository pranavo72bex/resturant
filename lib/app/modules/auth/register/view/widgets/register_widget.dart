import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/auth/login/view/login_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            suffixIcon: customButtonarrow(),
            hintText: "Mobile Number",
            hintStyle: TextStyle(
              color: Kblack,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter OTP",
            hintStyle: TextStyle(
              color: Kgrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
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
          AssetImage("assets/icons/arrow.png"),
          color: Colors.white,
        ),
      ),
    );
  }
}
