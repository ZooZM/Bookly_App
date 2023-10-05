
import 'package:bookly_app/Features/Home/presentation/view/widgets/Best_Seller_Card.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Book_Saller_Listview extends StatelessWidget {
  const Book_Saller_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) =>  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kBookDetails);
          },
          child: const Best_Seller_Card()),
      ),
    );
  }
}
