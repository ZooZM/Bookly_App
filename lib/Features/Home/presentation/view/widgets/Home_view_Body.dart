import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_App_Bar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Home_View_Body extends StatelessWidget {
  const Home_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar()
        ],
      ),
    );
  }
}
