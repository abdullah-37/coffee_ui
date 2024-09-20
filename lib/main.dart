import 'package:coffee_app/screens/onboardingscreen.dart/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardingscreen(),
      // home: HomeScreen(),
      // home: DetailScreen(
    );
  }
}
