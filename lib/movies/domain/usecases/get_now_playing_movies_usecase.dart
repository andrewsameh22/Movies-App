import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/core/usecase/base_usecase.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCase<List<Movie>> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
