import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

class BookDetailsview extends StatelessWidget {
  const BookDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
