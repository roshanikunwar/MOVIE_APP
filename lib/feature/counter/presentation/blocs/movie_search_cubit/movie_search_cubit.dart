import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_online_course/feature/counter/data/repository/movie_repositoroy.dart';
import 'package:flutter_online_course/main.dart';

part 'movie_search_state.dart';

class MovieSearchCubit extends Cubit<MovieSearchState> {
  MovieSearchCubit()
      : _movieRepository = getIt<MovieRepository>(),
        super(MovieSearchInitial());

  late final MovieRepository _movieRepository;


  void searchMovie({required String queryFromUi}){

    _movieRepository.searchMovie(queryFromCubit:queryFromUi);

  }
}
