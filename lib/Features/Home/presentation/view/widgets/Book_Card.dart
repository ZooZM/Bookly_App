import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.66,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AssetsData.book), fit: BoxFit.fill),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
