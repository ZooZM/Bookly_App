import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

class Book_Details_view extends StatelessWidget {
  const Book_Details_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
