import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDataSource {
  Future<List<Movie>> getIsNowPlaying({int page = 1});
}
