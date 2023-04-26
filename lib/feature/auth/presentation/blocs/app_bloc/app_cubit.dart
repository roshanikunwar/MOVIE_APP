import 'package:bloc/bloc.dart';
import 'package:flutter_online_course/feature/auth/data/app_repo_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';

part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this._appRepoImpl) : super(const AppState.initial());

  final AppRepoImpl _appRepoImpl;

  void checkIfUserIsLoggedInPreviously() async{

    final userHaveLoggedInPreviously =
        _appRepoImpl.checkIfUserIsLoggedInPreviously();

    await Future.delayed(const Duration(seconds: 1));

    if (userHaveLoggedInPreviously) {
      emit(const AppState.isLoggedIn());
    } else {
      emit(const AppState.isNotLoggedIn());
      print('user is ${userHaveLoggedInPreviously}');
    }
  }
}
