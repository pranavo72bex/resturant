import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({
    Key? key,
    required this.inputtext,
    this.color,
    this.icon,
    required this.ontap,
  }) : super(key: key);
  final String inputtext;
  final color;
  final icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          primary: color, // background
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon),
              ),
            Text(
              inputtext,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
