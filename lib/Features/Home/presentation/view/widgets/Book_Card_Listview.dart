import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view_Model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/core/widgets/customcircularprogress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookCardListview extends StatelessWidget {
  const BookCardListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetails,
                    );
                  },
                  child: BookCard(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomFailureMessage(mess: state.failureMssg);
        } else {
          return const Center(child: CustomCircularprogress());
        }
      },
    );
  }
}
