import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getIsNowPlaying({int page = 1});
}
