import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/commonwidgets/headerimg.dart';
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
                HeaderImage(),
                SizedBox(
                  height: 46,
                ),
                Text(
                  "Let's Register.",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Enter your Mobile Number",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),
                InputPage(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 35,
                    right: 30,
                  ),
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
