part of 'movie_details_bloc.dart';

@immutable
class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetails,
    this.movieDetailState = RequestState.loading,
    this.movieDetailsmessage = '',
  });
  final MovieDetails? movieDetails;
  final RequestState movieDetailState;
  final String movieDetailsmessage;

  @override
  List<Object> get props => [
        movieDetails!,
        movieDetailState,
        movieDetailsmessage,
      ];

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? movieDetailState,
    String? movieDetailsmessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailState: movieDetailState ?? this.movieDetailState,
      movieDetailsmessage: movieDetailsmessage ?? this.movieDetailsmessage,
    );
  }
}
