import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_online_course/core/base/base_bloc.dart';
import 'package:flutter_online_course/feature/counter/data/models/movie_details_model.dart';
import 'package:flutter_online_course/feature/counter/data/repository/movie_repositoroy.dart';
import 'package:flutter_online_course/main.dart';

part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> with BaseBlocMixin {
  MovieDetailsCubit()
      : _movieRepository = getIt<MovieRepository>(),
        super(MovieDetailsInitial());
  late final MovieRepository _movieRepository;

  void getMovieDetails({required int movieId}) async {
    emit(MovieDetailsInitial());
    handleBlocData(
        response: await _movieRepository.getMovieDetails(movieId: movieId),
        onData: (movieDetails) {
          if (movieDetails != null) {
            emit(MovieDetailFetched(movieDetails));
          }
        },
        onFailure: (String? error) {
          emit(MovieDetailError(error!));
        });
    // final response = await _movieRepository.getMovieDetails(movieId: movieId);
    // response.fold((error) => null, (movieDetails) {
    //   if (movieDetails != null) {
    //     emit(MovieDetailFetched(movieDetails));
    //   }
    // });
  }
}
