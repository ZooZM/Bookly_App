import 'package:bookly_app/core/utils/Styles.dart';
import 'package:bookly_app/core/widgets/CustomButtom.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.8;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 48,
          width: width / 2,
          child: CusttomButtom(
            title: Text(
              '19.99 €',
              style: Styles.textStyle18
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        SizedBox(
          height: 48,
          width: width / 2,
          child: CusttomButtom(
            title: Text(
              'Free preview',
              style: Styles.textStyle18
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            color: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(18),
                bottomRight: Radius.circular(18)),
          ),
        ),
      ],
    );
  }
}
