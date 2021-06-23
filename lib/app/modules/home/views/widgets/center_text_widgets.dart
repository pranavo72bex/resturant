import 'package:flutter/material.dart';

class CenterTextwidget extends StatelessWidget {
  const CenterTextwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(style: DefaultTextStyle.of(context).style, children: [
          TextSpan(text: "it seems like you\n"),
          TextSpan(text: "haven't added any of your\n"),
          TextSpan(
              text: "favorite store!!!\n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
          TextSpan(text: "add them from nearby\n"),
          TextSpan(text: "swipe left\n"),
        ]),
      ),
    );
  }
}
