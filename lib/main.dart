import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:restaurantsapp/app/modules/onboarding_screen/view/onboarding_screen.dart';
import 'app/binding/allcontroller_binding.dart';
import 'app/core/themedata/theme_data.dart';
import 'app/modules/home/views/widgets/bottomnaviagationbar.dart';
import 'app/routes/app_pages.dart';

GetStorage userdata = GetStorage();
bool? isfirstime;

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  AllControllerBinding().dependencies();
  LicenseRegistry.addLicense(
    () async* {
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    },
  );

  final isfirstime = userdata.read("intro");
  print(isfirstime);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: AllControllerBinding(),
      title: "Application",
      getPages: AppPages.routes,
      theme: Apptheme().defaultheme,
      home: isfirstime == true || isfirstime == null
          ? OnboardingScreens()
          : AppNavigator(),
    ),
  );
}
