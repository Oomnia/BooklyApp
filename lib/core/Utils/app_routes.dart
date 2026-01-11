import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: '/homeView', builder: (context, state) => HomeView()),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(path: '/seachView', builder: (context, state) => SearchView()),
    ],
  );
}
