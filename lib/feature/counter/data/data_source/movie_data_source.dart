import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_online_course/core/base/dio_remote.dart';
import 'package:flutter_online_course/core/constants.dart';
import 'package:flutter_online_course/core/exception/api_exception.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_card_model.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_details_model.dart';
import 'package:flutter_online_course/feature/counter/data/models/searched_movie_model.dart';
import 'package:flutter_online_course/main.dart';

abstract class MovieDataSourceAbs {
  Future<Either<ApiException, List<MovieCardModel>>> fetchUpcomingMovies(
      {required String upcomingMovies});
}

/// Data source where all the api calls are handled

class MovieDataSource extends BaseRemoteSource implements MovieDataSourceAbs {
  /// initializing dio client
  /// when the object of MovieDataSource is created
  MovieDataSource() {
    _dioClient = getIt<Dio>();
  }

  late Dio _dioClient;

  /// Fetch api using dio client' get method
  @override
  Future<Either<ApiException, List<MovieCardModel>>> fetchUpcomingMovies(
      {required String upcomingMovies}) async {
    /// initializing empty map of json
    // Map<String, dynamic> json = {};

    /// initializing empty list of MovieCardModel
    List<MovieCardModel> movieCardModels = [];
    return networkHandler(
        request: (dio) => dio.get(upcomingMovies),
        onResponse: (actualJson) {
          for (var result in actualJson['results']) {
            final MovieCardModel movieCard = MovieCardModel.fromJson(result);
            movieCardModels.add(movieCard);
          }
          return right(movieCardModels);
        });

    //
    // final eitherData = await HandleNetworkCall().getData(upcomingMovies);
    //
    // return eitherData.fold((serverError) => left(serverError), (actualJson) {
    //   for (var result in actualJson['results']) {
    //     final MovieCardModel movieCard = MovieCardModel.fromJson(result);
    //     movieCardModels.add(movieCard);
    //   }
    //   return right(movieCardModels);
    // });
  }

  Future<MovieDetailsModel?> fetchMovieDetails({required int movieId}) async {
    MovieDetailsModel? movieDetailsModel;
    // final Response<
    //     Map<String,
    //         dynamic>> movieDetailResponse = await _dioClient.get(
    //     '${MovieConstants.baseUrl}/$movieId?api_key=${MovieConstants.key}&language=en-US');
    //
    // final Map<String, dynamic>? movieJson = movieDetailResponse.data;
    //
    // if (movieJson != null) {
    //   movieDetailsModel = MovieDetailsModel.fromJson(movieJson);
    // }
    // return movieDetailsModel;

    return networkHandler(request: (dio) {
      return dio.get(
          '${MovieConstants.baseUrl}/$movieId?api_key=${MovieConstants.key}&language=en-US');
    }, onResponse: (responseJson) {
      movieDetailsModel = MovieDetailsModel.fromJson(responseJson);
      return movieDetailsModel;
    });
  }

  Future<Either<String?, SearchedMovieModel?>> searchMovie(
      {required String userQuery}) async {
    SearchedMovieModel? searchedMovieModel;

    final String movieSearchApiPath =
        '${MovieConstants.searchMovieUrl}query=$userQuery';

    // final Response<Map<String, dynamic>> movieDetailResponse =
    //     await _dioClient.get(movieSearchApiPath);
    //
    // final Map<String, dynamic>? movieJson = movieDetailResponse.data;
    //
    // if (movieJson != null) {
    //   searchedMovieModel = SearchedMovieModel.fromJson(movieJson);
    // }
    // return searchedMovieModel;

    return networkHandler(
        request: (dio) => dio.get(movieSearchApiPath),
        onResponse: (movieJson) {
          searchedMovieModel = SearchedMovieModel.fromJson(movieJson);
          return right(searchedMovieModel);
        });
  }
}

enum HttpType { get, post, put, delete }
