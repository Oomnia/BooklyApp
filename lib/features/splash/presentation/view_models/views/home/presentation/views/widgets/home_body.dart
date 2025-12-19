import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/custom_appBar.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomAppbar(), ListviewItem()]);
  }
}
