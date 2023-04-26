import 'package:bloc/bloc.dart';
import 'package:flutter_online_course/feature/counter/data/repository/logout_repo_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_state.dart';

part 'logout_cubit.freezed.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this._logoutRepoImpl) : super(const LogoutState.initial());
  final LogoutRepoImpl _logoutRepoImpl;

  void logoutUser() {
    emit(const LogoutState.processing());
    _logoutRepoImpl.logoutUser();
    emit(const LogoutState.success());
  }
}
