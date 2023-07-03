import 'package:flutter/material.dart';
import 'package:movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/movies/data/repository/movies_repository.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';
import 'package:movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';

class MoviesScreen extends StatefulWidget {
  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    BaseMoviesRepository moviesRepository =
        MoviesRepository(baseMovieRemoteDataSource);
    final result = await GetNowPlayingMoviesUseCase(moviesRepository).execute();
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            _getData();
          });
        },
      ),
    );
  }
}
