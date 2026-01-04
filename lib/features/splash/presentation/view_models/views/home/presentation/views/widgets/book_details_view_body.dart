import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/custom_bookDetails_appBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: const Column(children: [CustomBookdetailsAppbar()]),
    );
  }
}
