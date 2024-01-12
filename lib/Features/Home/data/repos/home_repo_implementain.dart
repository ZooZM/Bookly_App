import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class ApiRepoImpl implements HomeRepo {
  final ApiService apiService;

  ApiRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject: programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(Serverfailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks() {
    // TODO: implement fetchFeaturesBooks
    throw UnimplementedError();
  }
}
