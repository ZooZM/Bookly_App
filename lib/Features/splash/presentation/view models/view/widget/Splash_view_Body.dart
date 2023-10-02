import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Splash_view_Body extends StatelessWidget {
  const Splash_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(AssetsData.logo));
  }
}