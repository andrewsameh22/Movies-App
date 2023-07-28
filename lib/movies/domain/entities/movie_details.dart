import 'package:equatable/equatable.dart';
import 'package:movies/movies/domain/entities/genres.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overview;
  final String release_date;
  final int runtime;
  final String title;
  final double voteAverage;

  MovieDetails({
    required this.backdropPath,
    required this.id,
    required this.overview,
    required this.release_date,
    required this.runtime,
    required this.title,
    required this.voteAverage,
    required this.genres,
  });

  @override
  List<Object> get props => [
        backdropPath,
        id,
        overview,
        release_date,
        runtime,
        title,
        voteAverage,
        genres,
      ];
}
