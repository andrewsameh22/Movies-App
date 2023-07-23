import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movies/movies/domain/entities/movie_details.dart';
import 'package:movies/movies/domain/usecases/get_movie_details_usecase.dart';

import '../../../core/utils/enums.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase) : super(MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
  }
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));

    result.fold(
        (l) => emit(state.copyWith(
            movieDetailState: RequestState.error,
            movieDetailsmessage: l.message)),
        (r) => emit(state.copyWith(
              movieDetails: r,
              movieDetailState: RequestState.loaded,
            )));
  }
}
