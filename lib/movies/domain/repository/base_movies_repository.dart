import 'package:dartz/dartz.dart';
import 'package:movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/movies/domain/entities/movie.dart';

import '../../../core/error/exceptions.dart';

abstract class BaseMoviesRepository {
  Future<Either<List<Movie>, ServerException>> getNowPlayingMovies();

  Future<Either<List<Movie>, ServerException>> getPopularMovies();

  Future<Either<List<Movie>, ServerException>> getTopRatedMovies();
}
