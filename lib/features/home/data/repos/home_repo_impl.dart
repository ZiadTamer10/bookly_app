import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?filtering=free-ebooks&sorting=newest&q=computer',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.factoryDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
        endPoint: 'volumes?filtering=free-ebookst&q=subject:Programming',
      );
      List<BookModel> book = [];
      for (var item in data['items']) {
        book.add(BookModel.fromJson(item));
      }
      return right(book);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.factoryDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var date = await apiServices.get(
        endPoint:
            'volumes?filtering=free-ebookst&q=subject:Programming&sorting=relevance',
      );

      List<BookModel> books = [];
      for (var item in date['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.factoryDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
