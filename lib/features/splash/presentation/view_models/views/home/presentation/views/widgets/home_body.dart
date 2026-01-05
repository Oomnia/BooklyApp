import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/bestseller_listview.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/books_listview.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomAppbar(),
              ),
              BooksListview(),
              Gap(50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: BestsellerListview(),
          ),
        ),
      ],
    );
  }
}
