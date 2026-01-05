import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 46, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 32),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/seachView');
            },
            icon: Icon(Icons.search, size: 32),
          ),
        ],
      ),
    );
  }
}
