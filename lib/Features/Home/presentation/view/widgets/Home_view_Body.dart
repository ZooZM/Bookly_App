import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card_Listview.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Custom_App_Bar.dart';
import 'package:bookly_app/core/utils/assets.dart';
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
          Best_Seller_Card()
        ],
      ),
    );
  }
}

class Best_Seller_Card extends StatelessWidget {
  const Best_Seller_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
          child: AspectRatio(
            aspectRatio: 0.6,
            child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.book), fit: BoxFit.fill),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
          child:  Column(
            children: [
               Text(
                'Harry Potter and the Goblet of Fire',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text('J.K. Rowling')
            ],
          ),
        ),

      ],
    );
  }
}
