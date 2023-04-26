part of 'auth_bloc.dart';

@freezed
 class AuthState with _$AuthState {
  factory AuthState.initial()= InitialState;
  factory AuthState.success({required String message})= RegisterSuccessState;
  factory AuthState.registering()= RegisteringState;

  factory AuthState.logging()= LoggingState;
  factory AuthState.loginSuccess({required String message})= LoginSuccess;
  factory AuthState.authError({required String message})= ErrorState;
}
//
// class RegisterInitial extends AuthState {
//   @override
//   List<Object> get props => [];
// }
//
// class RegisteringState extends AuthState {
//   @override
//   List<Object> get props => [];
// }
//
// class RegisterSuccessState extends AuthState {
//   const RegisterSuccessState();
//
//
//
//   @override
//   List<Object> get props => [];
// }
