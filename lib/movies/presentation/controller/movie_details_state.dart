part of 'movie_details_bloc.dart';

@immutable
class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetails,
    this.movieDetailState = RequestState.loading,
    this.movieDetailsmessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationmessage = '',
  });

  final MovieDetails? movieDetails;
  final RequestState movieDetailState;
  final String movieDetailsmessage;

  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationmessage;

  @override
  List<Object?> get props => [
        movieDetails,
        movieDetailState,
        movieDetailsmessage,
        recommendation,
        recommendationState,
        recommendationmessage,
      ];

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? movieDetailState,
    String? movieDetailsmessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationmessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailState: movieDetailState ?? this.movieDetailState,
      movieDetailsmessage: movieDetailsmessage ?? this.movieDetailsmessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationmessage:
          recommendationmessage ?? this.recommendationmessage,
    );
  }
}
