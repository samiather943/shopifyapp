import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyapp/features/authentications/screens/onboarding/onboarding.dart';
import 'package:shopifyapp/utils/constants/text_strings.dart';
import 'package:shopifyapp/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen()
    );
  }
}
