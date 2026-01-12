import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/Repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'books_listview_state.dart';

class BooksListviewCubit extends Cubit<BooksListviewState> {
  BooksListviewCubit(this.homeRepo) : super(BooksListviewInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(BooksListviewLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure)
    {
      emit(BooksListviewFailure(failure.errMessage));
    },
    (books) {
      emit(BooksListviewSuccess(books));
    });
  }
}
