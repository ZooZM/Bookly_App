
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.8;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 48,
          width: width / 2,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18))),
          child: Center(
            child: Text(
              '19.99 €',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        Container(
          height: 48,
          width: width / 2,
          decoration: const BoxDecoration(
              color: Color(0xFEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomRight: Radius.circular(18))),
          child: Center(
            child: Text(
              'Free preview',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
