import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card_Listview.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_Smaller_Book_Listview.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_App_Bar.dart';
import 'package:bookly_app/Features/Home/presentation/view_Model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_failure_message.dart';
import 'package:bookly_app/core/widgets/customcircularprogress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
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
                                  extra: {'yourKey': 'yourStringValue'},
                                );
                              },
                              child: BookCard(
                                  imageUrl: state.books[index].volumeInfo
                                      .imageLinks.thumbnail),
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
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Best Seller',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          const SliverFillRemaining(
            child: CustomSmallerBookListview(),
          ),
        ],
      ),
    );
  }
}
