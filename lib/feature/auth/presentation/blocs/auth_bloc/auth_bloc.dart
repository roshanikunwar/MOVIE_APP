import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_online_course/feature/auth/data/models/registration_model.dart';
import 'package:flutter_online_course/feature/auth/data/register_repo_imp.dart';
import 'package:flutter_online_course/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc()
      : _registerRepoImpl = getIt<RegisterRepoImpl>(),
        super(AuthState.initial()) {
    on<RegisterButtonClickEvent>(registerUser);
    on<LoginButtonClickEvent>(loginUser);
  }

  late final RegisterRepoImpl _registerRepoImpl;

  void registerUser(RegisterButtonClickEvent event, emit) async {
    emit(RegisteringState());

    final bool isCredentialStored = _registerRepoImpl.storeRegistrationData(
        registrationModel: event.registrationModel);

    if (isCredentialStored) {
      emit(AuthState.success(message: 'someting'));
    }
  }

  void loginUser(LoginButtonClickEvent event, emit) {

    emit(AuthState.logging());

    final bool isValidUser = _registerRepoImpl.loginUser(
        username: event.username, password: event.password);

    if (isValidUser) {
      emit(AuthState.loginSuccess(message: 'Login Successful'));
    } else {
      emit(AuthState.authError(message: 'Invalid login credential'));
    }
  }
}
