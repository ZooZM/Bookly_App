import 'dart:ui';

import 'package:bookly_app/Features/Home/presentation/view/widgets/Best_Seller_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetails.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetailsAppBar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Rate.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/BookePrice.dart';
import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BookDetailsAppBar(),
        Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.29,
              child: const Book_Card()),
        ),
        const SizedBox(
          height: 43,
        ),
        const BookDetails(),
        const SizedBox(
          height: 30,
        ),
        const BookPrice(),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "You can also like",
            style: Styles.textStyle14,
          ),
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: SizedBox(
            height:MediaQuery.of(context).size.height * 0.14 ,
            child: const SmallBookCard()),
        )
      ],
    );
  }
}

class SmallBookCard extends StatelessWidget {
  const SmallBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: AspectRatio(
              aspectRatio: 0.6,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.book), fit: BoxFit.fill),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        );
      },
    );
  }
}
