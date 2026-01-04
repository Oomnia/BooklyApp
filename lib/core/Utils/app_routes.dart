import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(path: '/homeView',
    builder: (context, state) => HomeView(),)
  ],
);

}