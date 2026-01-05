import 'package:bookly_app/features/home/presentation/views/widgets/bestseller_item.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
     return Expanded(
       child: ListView.builder(
        itemBuilder: (context, index) => const BestsellerItem(),
        itemCount: 10,
           ),
     );
  }
}

  