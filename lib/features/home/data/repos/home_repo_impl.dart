import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> featchFearturedBooks() {
    // TODO: implement featchFearturedBooks
    throw UnimplementedError();
  }
}
