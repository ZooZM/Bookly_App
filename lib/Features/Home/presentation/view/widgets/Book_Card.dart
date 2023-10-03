import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Book_Card extends StatelessWidget {
  const Book_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.27,
      child: AspectRatio(
        aspectRatio: 0.66,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AssetsData.book),
              fit: BoxFit.fill
              ),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16)
          ),
        ),
      ),
    );
  }
}