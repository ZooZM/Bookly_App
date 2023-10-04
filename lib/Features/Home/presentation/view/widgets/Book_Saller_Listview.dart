
import 'package:bookly_app/Features/Home/presentation/view/widgets/Best_Seller_Card.dart';
import 'package:flutter/material.dart';

class Book_Saller_Listview extends StatelessWidget {
  const Book_Saller_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Best_Seller_Card(),
      ),
    );
  }
}
