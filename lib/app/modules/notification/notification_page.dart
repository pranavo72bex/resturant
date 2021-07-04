import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/core/constants/color_const.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              height: 40,
              color: kgreybackground,
              width: double.infinity,
              child: Text(
                "All Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(6),
                    width: double.infinity,
                    color: index % 2 == 0 ? kwhite : kgreybackground,
                    child: Text(
                        "Your Order ID 100000043216 has been successfully delivered."),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
