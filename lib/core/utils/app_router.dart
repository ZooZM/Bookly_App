import 'package:bookly_app/Features/Home/presentation/view/Home_view.dart';
import 'package:bookly_app/Features/splash/presentation/view%20models/view/Splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splash_view(),
      ),
      
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const Home_View(),
      ),
    ]);
}