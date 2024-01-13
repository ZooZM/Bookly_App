import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    super.key,
    required this.avrRat,
    required this.ratCount,
  });
  final double avrRat;
  final int ratCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          avrRat.toString(),
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.bold, fontFamily: 'montserrat'),
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '($ratCount)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
