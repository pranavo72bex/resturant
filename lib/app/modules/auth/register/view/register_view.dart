import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/data/themedata/conts.dart';
import 'package:restaurantsapp/app/modules/auth/register/view/widgets/register_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 40),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/icons/soooperimage.png",
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Let's Register.",
                  style: sooper,
                ),
                SizedBox(
                  height: 10,
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
