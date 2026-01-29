import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/Utils/app_routes.dart';
import 'package:bookly_app/core/Utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/Repos/home_repo_implement.dart';
import 'package:bookly_app/features/home/presentation/view_models/books_listview_cubit/books_listview_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BooksListviewCubit(getIt.get<HomeRepoImplement>())..fetchFeaturedBooks()
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplement>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
