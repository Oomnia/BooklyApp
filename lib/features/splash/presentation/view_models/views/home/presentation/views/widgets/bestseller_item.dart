import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class BestsellerItem extends StatelessWidget {
  const BestsellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 3.7,
            child: Image.asset(AssetsData.testImage),
          ),
        ],
      ),
    );
  }
}
