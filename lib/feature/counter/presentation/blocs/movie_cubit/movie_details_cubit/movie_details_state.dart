part of 'movie_details_cubit.dart';

abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();
}

class MovieDetailsInitial extends MovieDetailsState {
  @override
  List<Object> get props => [];
}

class MovieDetailError extends MovieDetailsState {
  final String error;

  const MovieDetailError(this.error);

  @override
  List<Object> get props => [error];
}

class MovieDetailFetched extends MovieDetailsState {
  const MovieDetailFetched(this.movieDetailsModel);

  final MovieDetailsModel movieDetailsModel;

  @override
  List<Object?> get props => [movieDetailsModel];
}
