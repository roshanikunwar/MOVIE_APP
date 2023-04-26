// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialState>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialState implements InitialState {
  _$InitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AuthState {
  factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$RegisterSuccessStateCopyWith<$Res> {
  factory _$$RegisterSuccessStateCopyWith(_$RegisterSuccessState value,
          $Res Function(_$RegisterSuccessState) then) =
      __$$RegisterSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccessState>
    implements _$$RegisterSuccessStateCopyWith<$Res> {
  __$$RegisterSuccessStateCopyWithImpl(_$RegisterSuccessState _value,
      $Res Function(_$RegisterSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterSuccessState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessState implements RegisterSuccessState {
  _$RegisterSuccessState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessStateCopyWith<_$RegisterSuccessState> get copyWith =>
      __$$RegisterSuccessStateCopyWithImpl<_$RegisterSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccessState implements AuthState {
  factory RegisterSuccessState({required final String message}) =
      _$RegisterSuccessState;

  String get message;
  @JsonKey(ignore: true)
  _$$RegisterSuccessStateCopyWith<_$RegisterSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteringStateCopyWith<$Res> {
  factory _$$RegisteringStateCopyWith(
          _$RegisteringState value, $Res Function(_$RegisteringState) then) =
      __$$RegisteringStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteringStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisteringState>
    implements _$$RegisteringStateCopyWith<$Res> {
  __$$RegisteringStateCopyWithImpl(
      _$RegisteringState _value, $Res Function(_$RegisteringState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisteringState implements RegisteringState {
  _$RegisteringState();

  @override
  String toString() {
    return 'AuthState.registering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisteringState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) {
    return registering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) {
    return registering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) {
    return registering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) {
    return registering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(this);
    }
    return orElse();
  }
}

abstract class RegisteringState implements AuthState {
  factory RegisteringState() = _$RegisteringState;
}

/// @nodoc
abstract class _$$LoggingStateCopyWith<$Res> {
  factory _$$LoggingStateCopyWith(
          _$LoggingState value, $Res Function(_$LoggingState) then) =
      __$$LoggingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggingState>
    implements _$$LoggingStateCopyWith<$Res> {
  __$$LoggingStateCopyWithImpl(
      _$LoggingState _value, $Res Function(_$LoggingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingState implements LoggingState {
  _$LoggingState();

  @override
  String toString() {
    return 'AuthState.logging()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) {
    return logging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) {
    return logging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) {
    return logging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) {
    return logging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging(this);
    }
    return orElse();
  }
}

abstract class LoggingState implements AuthState {
  factory LoggingState() = _$LoggingState;
}

/// @nodoc
abstract class _$$LoginSuccessCopyWith<$Res> {
  factory _$$LoginSuccessCopyWith(
          _$LoginSuccess value, $Res Function(_$LoginSuccess) then) =
      __$$LoginSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccess>
    implements _$$LoginSuccessCopyWith<$Res> {
  __$$LoginSuccessCopyWithImpl(
      _$LoginSuccess _value, $Res Function(_$LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginSuccess(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginSuccess implements LoginSuccess {
  _$LoginSuccess({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.loginSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      __$$LoginSuccessCopyWithImpl<_$LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) {
    return loginSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) {
    return loginSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements AuthState {
  factory LoginSuccess({required final String message}) = _$LoginSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorState>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  _$ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.authError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      __$$ErrorStateCopyWithImpl<_$ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) success,
    required TResult Function() registering,
    required TResult Function() logging,
    required TResult Function(String message) loginSuccess,
    required TResult Function(String message) authError,
  }) {
    return authError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? success,
    TResult? Function()? registering,
    TResult? Function()? logging,
    TResult? Function(String message)? loginSuccess,
    TResult? Function(String message)? authError,
  }) {
    return authError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? success,
    TResult Function()? registering,
    TResult Function()? logging,
    TResult Function(String message)? loginSuccess,
    TResult Function(String message)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(RegisterSuccessState value) success,
    required TResult Function(RegisteringState value) registering,
    required TResult Function(LoggingState value) logging,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(ErrorState value) authError,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(RegisterSuccessState value)? success,
    TResult? Function(RegisteringState value)? registering,
    TResult? Function(LoggingState value)? logging,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(ErrorState value)? authError,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(RegisterSuccessState value)? success,
    TResult Function(RegisteringState value)? registering,
    TResult Function(LoggingState value)? logging,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(ErrorState value)? authError,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AuthState {
  factory ErrorState({required final String message}) = _$ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
