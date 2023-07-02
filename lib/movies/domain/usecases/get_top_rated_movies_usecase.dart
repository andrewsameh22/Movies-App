import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

import '../entities/movie.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;
  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<Either<List<Movie>, ServerException>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
