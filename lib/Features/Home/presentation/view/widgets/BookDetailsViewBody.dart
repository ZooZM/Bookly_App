import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetails.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/BookDetailsAppBar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/BookePrice.dart';
import 'package:bookly_app/Features/Home/presentation/view/widgets/smallBookCard.dart';
import 'package:bookly_app/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BookDetailsAppBar(),
              Center(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.29,
                    child: const BookCard(
                      imageUrl:
                          'https://th.bing.com/th/id/R.52406f9fd62de6271fb76e372115cd3b?rik=IyT1%2fVhksFcmXQ&riu=http%3a%2f%2fradiusblocks.com%2fwp-content%2fuploads%2f2022%2f09%2fimage-grid_5.jpg&ehk=J60uhjobAJSrVLuIJuQHckdkUSobwjLg%2bdQqCRVmaik%3d&risl=&pid=ImgRaw&r=0',
                    )),
              ),
              const SizedBox(
                height: 43,
              ),
              const BookDetails(),
              const SizedBox(
                height: 30,
              ),
              const BookPrice(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "You can also like",
                  style: Styles.textStyle14,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.14,
                    child: const SmallBookCard()),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        )
      ],
    );
  }
}
