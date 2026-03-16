import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl(this.apiServices);
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchBooks() async {
    try {
      var data = await apiServices.get(
        endPoint:
            'volumes?q=Intelligence Science&filtering=free-ebooks&sorting=relevance',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
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
