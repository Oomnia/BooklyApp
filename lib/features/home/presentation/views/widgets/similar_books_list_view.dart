import 'package:bookly_app/features/home/presentation/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ListviewItem(),
      ),
    );
  }
}
