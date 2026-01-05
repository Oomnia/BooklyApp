import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can also like',
          style: Styles.textStyle114.copyWith(fontWeight: FontWeight.w600),
        ),
        Gap(30),
        SimilarBooksListview(),
      ],
    );
  }
}
