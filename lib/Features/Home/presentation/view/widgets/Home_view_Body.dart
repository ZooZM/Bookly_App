import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card_Listview.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_Smaller_Book_Listview.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_App_Bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BookCardListview(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Best Seller',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          SliverFillRemaining(child: CustomSmallerBookListview())
        ],
      ),
    );
  }
}
