import 'package:dartz/dartz.dart';
import 'package:flutter_online_course/core/base/base_repository.dart';
import 'package:flutter_online_course/core/exception/api_exception.dart';
import 'package:flutter_online_course/feature/counter/data/data_source/movie_data_source.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_card_model.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_details_model.dart';
import 'package:flutter_online_course/feature/counter/data/models/searched_movie_model.dart';

/// calls the appropriate datasource
/// and its related method calls
class MovieRepository extends BaseRepository {
  MovieRepository(this._movieDataSource);

  late final MovieDataSource _movieDataSource;

  /// calls [_movieDataSource] methods passing the  [url]
  Future<Either<ApiException, List<MovieCardModel>>> getUpcomingMovies(
      {required String url}) async {
    return await _movieDataSource.fetchUpcomingMovies(upcomingMovies: url);
  }

  Future<Either<String?, MovieDetailsModel?>> getMovieDetails(
      {required int movieId}) async {
    return handleNetworkCall(
        call: _movieDataSource.fetchMovieDetails(movieId: 1),
        onSuccess: (data) => data);

    // try {
    //   final movieDetailModel =
    //       await _movieDataSource.fetchMovieDetails(movieId: movieId);
    //   return right(movieDetailModel);
    // } on String catch (e) {
    //   return left(e);
    // } catch (e) {
    //   return left(e.toString());
    // }
  }

  Future<Either<String?, SearchedMovieModel?>> searchMovie(
      {required String queryFromCubit}) async {
    return await _movieDataSource.searchMovie(userQuery: queryFromCubit);
  }
}
