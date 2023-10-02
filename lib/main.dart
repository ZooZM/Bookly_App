import 'package:bookly_app/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/splash/presentation/view models/view/Splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: KPrimaryColor),
      home: const Splash_view(),
    );

  }
}