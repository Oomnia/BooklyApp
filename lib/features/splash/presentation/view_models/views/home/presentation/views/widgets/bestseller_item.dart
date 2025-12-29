import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/Utils/assets.dart';
import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/bookrating.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BestsellerItem extends StatelessWidget {
  const BestsellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 3.7,
              child: Image.asset(AssetsData.testImage),
            ),
            Gap(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle120.copyWith(
                      fontFamily: kSectrafine,
                    ),
                  ),
                  Gap(3),
                  Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle114.copyWith(color: Colors.grey),
                  ),
                  Gap(3),
                  Row(
                    children: [
                      Text(
                        '19.99\$',
                        style: Styles.textStyle120.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Bookrating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
