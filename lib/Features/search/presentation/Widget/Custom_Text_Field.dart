import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          suffixIcon: IconButton(
              onPressed: () {}, icon: const Icon(Icons.search_outlined))),
    );
  }
}
