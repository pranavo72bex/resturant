import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/conts.dart';
import 'package:restaurantsapp/app/core/constants/image_const.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/widgets/register_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 31, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  soooperimg,
                ),
                SizedBox(
                  height: 83,
                ),
                Text(
                  "Let's Register.",
                  style: sooper,
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Enter your Mobile Number"),
                SizedBox(
                  height: 20,
                ),
                InputPage(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "By Continuing agreed to use Sooooper linkTerms of use & Privacy Policy",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
