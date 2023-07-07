import 'package:get_it/get_it.dart';
import 'package:movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/movies/data/repository/movies_repository.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';
import 'package:movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl()));

    ///Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));

    ///Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    ///Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
