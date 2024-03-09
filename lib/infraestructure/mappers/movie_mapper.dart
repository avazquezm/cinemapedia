import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/moviedb_movie.dart';

class MovieMapper {
  // map movie from moviedb to movie entity
  static Movie movieDBToEntity(MovieDBMovie movieDBMovie) => Movie(
        adult: movieDBMovie.adult,
        backdropPath: movieDBMovie.backdropPath == ''
            ? 'https://linnea.com.ar/wp-content/uploads/2018/09/404PosterNotFound.jpg' //example image of not found
            : 'https://image.tmdb.org/t/p/w500/${movieDBMovie.backdropPath}',
        genreIds: movieDBMovie.genreIds.map((id) => id.toString()).toList(),
        id: movieDBMovie.id,
        originalLanguage: movieDBMovie.originalLanguage,
        originalTitle: movieDBMovie.originalTitle,
        overview: movieDBMovie.overview,
        popularity: movieDBMovie.popularity,
        posterPath: movieDBMovie.posterPath == ''
            ? 'no-poster' // example no image returned
            : 'https://image.tmdb.org/t/p/w500/${movieDBMovie.posterPath}',
        releaseDate: movieDBMovie.releaseDate,
        title: movieDBMovie.title,
        video: movieDBMovie.video,
        voteAverage: movieDBMovie.voteAverage,
        voteCount: movieDBMovie.voteCount,
      );
}
