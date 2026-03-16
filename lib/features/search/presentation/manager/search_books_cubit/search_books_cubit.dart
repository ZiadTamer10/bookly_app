import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String book}) async {
    emit(SearchBooksLoading());

    var result = await searchRepo.fetchSearchBooks(book: book);

    result.fold(
      (failure) => emit(SearchBooksFailure(failure.errMessage)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
