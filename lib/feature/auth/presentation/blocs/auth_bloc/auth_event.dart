part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class RegisterButtonClickEvent extends AuthEvent{

  const RegisterButtonClickEvent({required this.registrationModel});
  final RegistrationModel registrationModel;

  @override

  List<Object?> get props =>[registrationModel];

}

class LoginButtonClickEvent extends AuthEvent{

  const LoginButtonClickEvent(this.username,this.password);

  final String username;
  final String password;
  @override
  List<Object?> get props =>[username,password];
}



