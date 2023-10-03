import 'package:bookly_app/Features/splash/presentation/view%20models/view/widget/SlidingText.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Splash_view_Body extends StatefulWidget {
  const Splash_view_Body({super.key});

  @override
  State<Splash_view_Body> createState() => _Splash_view_BodyState();
}

class _Splash_view_BodyState extends State<Splash_view_Body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    slidinganimation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
  @override
  void dispose() {
    
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(
            height: 4,
          ),
          SlidingText(slidinganimation: slidinganimation)
        ]);
  }
}
