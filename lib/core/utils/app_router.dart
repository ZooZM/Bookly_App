import 'package:bookly_app/Features/Home/presentation/view/Book_Details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/Home_view.dart';
import 'package:bookly_app/Features/search/presentation/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/view%20models/view/Splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/Book_Details';
  static const ksearchview = '/seachview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splash_view(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const Home_View(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const Book_Details_view(),
    ),
    GoRoute(
      path: ksearchview,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
