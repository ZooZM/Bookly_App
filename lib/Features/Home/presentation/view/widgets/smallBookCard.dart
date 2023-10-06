
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SmallBookCard extends StatelessWidget {
  const SmallBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () => GoRouter.of(context).push(AppRouter.kBookDetails),
            child: SizedBox(
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
          ),
        );
      },
    );
  }
}
