import '../entities/book_entity.dart';

abstract class HomeRepo{
  // what happen feature
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}