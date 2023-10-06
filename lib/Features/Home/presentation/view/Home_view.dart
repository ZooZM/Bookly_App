import 'package:bookly_app/Features/Home/presentation/view/widgets/Home_view_Body.dart';
import 'package:flutter/material.dart';

class Home_View extends StatelessWidget {
  const Home_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeViewBody()),
    );
  }
}