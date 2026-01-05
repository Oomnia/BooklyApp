import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/bookActions.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/bookrating.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/custom_bookDetails_appBar.dart';
import 'package:bookly_app/features/splash/presentation/view_models/views/home/presentation/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBookdetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: ListviewItem(),
          ),
          Gap(35),
          Center(
            child: Text(
              'The Jungle Book',
              style: Styles.textStyle130.copyWith(fontFamily: kSectrafine),
            ),
          ),
          Gap(6),
          Center(
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Gap(12),
          Bookrating(),
          Gap(30),
          Bookactions(),
          Gap(35),
          Text(
            'You Can also like',
            style: Styles.textStyle114.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
