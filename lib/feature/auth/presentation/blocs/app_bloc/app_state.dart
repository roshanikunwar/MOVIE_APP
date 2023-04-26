part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.isLoggedIn() = _LoggedIn;
  const factory AppState.isNotLoggedIn() = _NotLoggedIn;
}
