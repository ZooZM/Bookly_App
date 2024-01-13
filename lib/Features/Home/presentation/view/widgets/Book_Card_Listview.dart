import 'package:bookly_app/Features/Home/presentation/view/widgets/Book_Card.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCardListview extends StatelessWidget {
  const BookCardListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kBookDetails);
              },
              child: const BookCard(
                imageUrl:
                    'https://th.bing.com/th/id/R.52406f9fd62de6271fb76e372115cd3b?rik=IyT1%2fVhksFcmXQ&riu=http%3a%2f%2fradiusblocks.com%2fwp-content%2fuploads%2f2022%2f09%2fimage-grid_5.jpg&ehk=J60uhjobAJSrVLuIJuQHckdkUSobwjLg%2bdQqCRVmaik%3d&risl=&pid=ImgRaw&r=0',
              )),
        ),
      ),
    );
  }
}
