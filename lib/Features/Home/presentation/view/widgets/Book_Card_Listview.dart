import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCardListview extends StatelessWidget {
  const BookCardListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.27,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kBookDetails);
                      },
                      child: const BookCard()),
                )));
  }
}
