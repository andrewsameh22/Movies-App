import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

import '../entities/movie.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<List<Movie>, ServerException>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
