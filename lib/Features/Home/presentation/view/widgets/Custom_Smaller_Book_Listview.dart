import 'package:bookly_app/Features/Home/presentation/view/widgets/Best_Seller_Card.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSmallerBookListview extends StatelessWidget {
  const CustomSmallerBookListview({super.key, this.scrollPhysics});
  final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: scrollPhysics ?? const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kBookDetails);
            },
            child: const BestSellerCard()),
      ),
    );
  }
}
