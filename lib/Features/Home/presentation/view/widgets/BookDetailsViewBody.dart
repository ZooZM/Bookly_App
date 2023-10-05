import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetailsAppBar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const BookDetailsAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height *0.29,
          child: const Book_Card())
        ],
    );
  }
}