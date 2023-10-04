import 'package:bookly_app/Features/Home/presentation/view/widgets/Best_Seller_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card_Listview.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_App_Bar.dart';
import 'package:flutter/material.dart';


class Home_View_Body extends StatelessWidget {
  const Home_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Book_Card_Listview(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Best Seller',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Best_Seller_Card()
        ],
      ),
    );
  }
}
