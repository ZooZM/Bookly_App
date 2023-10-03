
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AssetsData.logo,height: 20,),
            Image.asset(AssetsData.icsearch)
          ],
        
          ),
      );
  }
}