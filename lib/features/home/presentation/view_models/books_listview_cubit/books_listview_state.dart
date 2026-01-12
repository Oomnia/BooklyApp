part of 'books_listview_cubit.dart';

sealed class BooksListviewState extends Equatable {
  const BooksListviewState();

  @override
  List<Object> get props => [];
}

final class BooksListviewInitial extends BooksListviewState {}

final class BooksListviewLoading extends BooksListviewState {}

final class BooksListviewSuccess extends BooksListviewState {
  final List<BookModel> books;
  const BooksListviewSuccess(this.books);
}

final class BooksListviewFailure extends BooksListviewState {
  final String errMessage;
  const BooksListviewFailure(this.errMessage);
}
