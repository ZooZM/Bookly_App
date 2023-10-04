
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:flutter/material.dart';

class Book_Card_Listview extends StatelessWidget {
  const Book_Card_Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.27,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8),
              child:  Book_Card(),
            )));
  }
}
