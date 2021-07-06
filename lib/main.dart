import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:restaurantsapp/app/modules/onboarding_screen/view/onboarding_screen.dart';
import 'app/binding/allcontroller_binding.dart';
import 'app/core/themedata/theme_data.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AllControllerBinding().dependencies();
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    },
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: AllControllerBinding(),
      title: "Application",
      getPages: AppPages.routes,
      theme: Apptheme().defaultheme,
      home: OnboardingScreens(),
    ),
  );
}
