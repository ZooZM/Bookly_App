import 'package:bookly_app/Features/search/presentation/Widget/Custom_Text_Field.dart';
import 'package:bookly_app/Features/search/presentation/Widget/Reasult_Search_Listview.dart';
import 'package:flutter/material.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
      child: Column(
        children: [
          CustomTextField(),
          Expanded(child: ResultSearchListview()),
        ],
      ),
    );
  }
}
