import 'package:bookly_app/Features/Home/presentation/view/widgets/Newest_Books_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view_Model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/core/widgets/customcircularprogress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetails);
                },
                child: NewestBooksCard(
                  book: state.books[index],
                ),
              ),
            ),
          );
        } else if (state is NewestBooksfailure) {
          return CustomFailureMessage(mess: state.failureMss);
        } else {
          return const Center(
            child: CustomCircularprogress(),
          );
        }
      },
    );
  }
}
