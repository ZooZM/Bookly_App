import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class Splash_view_Body extends StatelessWidget {
  const Splash_view_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(height: 4,),
          const Text(
            'Read Free Book',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white54),
          )
        ]);
  }
}
