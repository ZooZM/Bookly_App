import 'package:bookly_app/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Features/splash/presentation/view models/view/Splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KPrimaryColor),
      home: const Splash_view(),
    );

  }
}