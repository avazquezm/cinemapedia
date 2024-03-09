import 'package:cinemapedia/infraestructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infraestructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// never will change it is inmutable
final movieRepositoryProvider = Provider<MovieRepositoryImpl>((ref) {
  return MovieRepositoryImpl(movieDataSource: MovieDbDatasource());
});
