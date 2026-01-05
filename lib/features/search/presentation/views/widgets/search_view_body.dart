import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              Gap(20),
              Text('Search Results', style: Styles.textStyle18),
              Gap(30),
              SearchResults(),
            ],
          ),
        ),
      ),
    );
  }
}
