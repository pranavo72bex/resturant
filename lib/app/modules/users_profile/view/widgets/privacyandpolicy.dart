import 'package:flutter/material.dart';

class PrivacyandPolicyText extends StatelessWidget {
  const PrivacyandPolicyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Privacy Policy Terms Of Service Refund & Return Policy",
          style: TextStyle(fontSize: 10),
        ),
        Text(
          "Version 1.01",
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
