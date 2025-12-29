import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/bestseller_item.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/books_listview.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(),
          BooksListview(),
          Gap(50),
          Text('Best Seller', style: Styles.headText),
          Gap(10),
          BestsellerItem(),
        ],
      ),
    );
  }
}
