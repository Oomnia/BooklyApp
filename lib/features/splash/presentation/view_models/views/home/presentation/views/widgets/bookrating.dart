import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [Icon(Icons.star, color: Colors.amber),
                    Gap(6.3),
                    Text('4.8', style: Styles.textStyle16),
                    Gap(5),

                    Text(
                      '(2390)',
                      style: Styles.textStyle114.copyWith(color: Colors.grey),
                    ),],);
  }
}