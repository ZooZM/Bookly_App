import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Rate.dart';
import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Text(
            'Harry Potter and the Goblet of Fire',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'J.K. Rowling',
            style: Styles.textStyle14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRate(
          avrRat: 145,
          ratCount: 56,
        )
      ],
    );
  }
}
