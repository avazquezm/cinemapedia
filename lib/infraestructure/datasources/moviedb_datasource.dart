import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movie_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/mappers/movie_mapper.dart';
import 'package:cinemapedia/infraestructure/models/moviedb/moviedb_response.dart';
import 'package:dio/dio.dart';

class MovieDbDatasource extends MovieDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'language': 'en-US',
      },
    ),
  );

  @override
  Future<List<Movie>> getIsNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');

    final List<Movie> movies = MovieDBResponse.fromJson(response.data)
        .results
        .where((movie) =>
            movie.posterPath != 'no-poster') // filter movies without poster
        .map((movie) => MovieMapper.movieDBToEntity(movie))
        .toList();

    return movies;
  }
}
