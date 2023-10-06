import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    super.key,
  });

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
          '4.8',
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.bold, fontFamily: 'montserrat'),
        ),
        const SizedBox(
          width: 9,
        ),
        const Text(
          "(2390)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
