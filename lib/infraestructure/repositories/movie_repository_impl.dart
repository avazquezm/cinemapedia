import 'package:cinemapedia/domain/datasources/movie_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource movieDataSource;

  MovieRepositoryImpl({required this.movieDataSource});

  @override
  Future<List<Movie>> getIsNowPlaying({int page = 1}) async {
    return await movieDataSource.getIsNowPlaying(page: page);
  }
}
