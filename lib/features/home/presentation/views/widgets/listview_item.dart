import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class ListviewItem extends StatelessWidget {
  const ListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: AspectRatio(
              aspectRatio: 2 / 3.2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
              ),
            ),
          );
       
      }
  }

