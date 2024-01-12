part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLouding extends NewestBooksState {}

final class NewestBooksfailure extends NewestBooksState {
  final String failureMss;

  NewestBooksfailure(this.failureMss);
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}
