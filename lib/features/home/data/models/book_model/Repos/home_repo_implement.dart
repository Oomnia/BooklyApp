import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/Repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement  implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}