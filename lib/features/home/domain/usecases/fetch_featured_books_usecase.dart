import 'package:dartz/dartz.dart';
import 'package:deep_dive/features/home/domain/repositories/home_repo.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({
    required this.homeRepo,
  });

  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
