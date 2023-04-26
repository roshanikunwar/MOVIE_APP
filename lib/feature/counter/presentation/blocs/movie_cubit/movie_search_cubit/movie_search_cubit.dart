import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_online_course/feature/counter/data/models/searched_movie_model.dart';
import 'package:flutter_online_course/feature/counter/data/repository/movie_repositoroy.dart';
import 'package:flutter_online_course/main.dart';

part 'movie_search_state.dart';

class MovieSearchCubit extends Cubit<MovieSearchState> {
  MovieSearchCubit()
      : _movieRepository = getIt<MovieRepository>(),
        super(MovieSearchInitial());

  late final MovieRepository _movieRepository;

  void searchMovie({required String queryFromUi}) async {
    emit(MovieFetching());

    final response =
        await _movieRepository.searchMovie(queryFromCubit: queryFromUi);

    response.fold(
        (error) => emit(SearchedError(errorMessage: error.toString())),
        (movieModel) => _checkResultResponse(movieModel));
  }

  void _checkResultResponse(SearchedMovieModel? movieModel) {
    if (movieModel != null && movieModel.results.isNotEmpty) {
      emit(SearchedMovieFetched(searchedMovieModel: movieModel));
    } else {
      emit(const SearchedError(errorMessage: 'No Result Found'));
    }
  }
}
