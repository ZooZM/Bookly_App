import 'package:bookly_app/Features/search/presentation/Widget/seargh_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchviewBody()),
    );
  }
}
