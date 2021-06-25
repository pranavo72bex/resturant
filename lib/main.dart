import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/data/themedata/theme_data.dart';

import 'app/modules/merchant/view/merchant_page.dart';
import 'app/routes/app_pages.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      //initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Apptheme().defaultheme,
      home: MerchantPage(),
    ),
  );
}
