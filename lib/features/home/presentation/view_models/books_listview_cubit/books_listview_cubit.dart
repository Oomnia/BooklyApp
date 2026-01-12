import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'books_listview_state.dart';

class BooksListviewCubit extends Cubit<BooksListviewState> {
  BooksListviewCubit() : super(BooksListviewInitial());
}
