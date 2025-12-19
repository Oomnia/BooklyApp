import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';

class BooksListview extends StatelessWidget {
  const BooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.31,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ListviewItem(),
      ),
    );
  }
}
