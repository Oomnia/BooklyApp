import 'package:bookly_app/features/home/presentation/view_models/books_listview_cubit/books_listview_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListview extends StatelessWidget {
  const BooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksListviewCubit, BooksListviewState>(
      builder: (context, state) {
        if (state is BooksListviewSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.31,
  
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => ListviewItem(),
    ),
  );
}else if (state is BooksListviewFailure) {
          return Center(
            child: Text(state.errMessage),
          );
      } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
