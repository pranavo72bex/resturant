import 'package:flutter/material.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/customappbarmerch.dart';
import 'package:restaurantsapp/app/modules/merchant/view/widgets/customtabbar_mer.dart';

class MerchantPage extends StatelessWidget {
  const MerchantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomappbarMerch(),
              ),
              SizedBox(
                height: 10,
              ),
              // HorizontalCardMerch(),
              CustomTabbarMerch(),
            ],
          ),
        ),
      ),
    );
  }
}
