import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomFailureMessage extends StatelessWidget {
  const CustomFailureMessage({super.key, required this.mess});
  final String mess;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mess,
        style: Styles.textStyle20,
      ),
    );
  }
}
