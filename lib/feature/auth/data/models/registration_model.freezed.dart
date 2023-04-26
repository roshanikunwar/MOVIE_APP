// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationModel _$RegistrationModelFromJson(Map<String, dynamic> json) {
  return _RegistrationModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationModel {
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get collegeName => throw _privateConstructorUsedError;
  String? get phoneNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res, RegistrationModel>;
  @useResult
  $Res call(
      {String? email,
      String? username,
      String? password,
      String? firstName,
      String? lastName,
      String? collegeName,
      String? phoneNo});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res, $Val extends RegistrationModel>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? collegeName = freezed,
    Object? phoneNo = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      collegeName: freezed == collegeName
          ? _value.collegeName
          : collegeName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: freezed == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationModelCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$$_RegistrationModelCopyWith(_$_RegistrationModel value,
          $Res Function(_$_RegistrationModel) then) =
      __$$_RegistrationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? username,
      String? password,
      String? firstName,
      String? lastName,
      String? collegeName,
      String? phoneNo});
}

/// @nodoc
class __$$_RegistrationModelCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res, _$_RegistrationModel>
    implements _$$_RegistrationModelCopyWith<$Res> {
  __$$_RegistrationModelCopyWithImpl(
      _$_RegistrationModel _value, $Res Function(_$_RegistrationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? collegeName = freezed,
    Object? phoneNo = freezed,
  }) {
    return _then(_$_RegistrationModel(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      collegeName: freezed == collegeName
          ? _value.collegeName
          : collegeName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: freezed == phoneNo
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationModel implements _RegistrationModel {
  _$_RegistrationModel(
      {this.email,
      this.username,
      this.password,
      this.firstName,
      this.lastName,
      this.collegeName,
      this.phoneNo});

  factory _$_RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationModelFromJson(json);

  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? collegeName;
  @override
  final String? phoneNo;

  @override
  String toString() {
    return 'RegistrationModel(email: $email, username: $username, password: $password, firstName: $firstName, lastName: $lastName, collegeName: $collegeName, phoneNo: $phoneNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.collegeName, collegeName) ||
                other.collegeName == collegeName) &&
            (identical(other.phoneNo, phoneNo) || other.phoneNo == phoneNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, username, password,
      firstName, lastName, collegeName, phoneNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationModelCopyWith<_$_RegistrationModel> get copyWith =>
      __$$_RegistrationModelCopyWithImpl<_$_RegistrationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationModelToJson(
      this,
    );
  }
}

abstract class _RegistrationModel implements RegistrationModel {
  factory _RegistrationModel(
      {final String? email,
      final String? username,
      final String? password,
      final String? firstName,
      final String? lastName,
      final String? collegeName,
      final String? phoneNo}) = _$_RegistrationModel;

  factory _RegistrationModel.fromJson(Map<String, dynamic> json) =
      _$_RegistrationModel.fromJson;

  @override
  String? get email;
  @override
  String? get username;
  @override
  String? get password;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get collegeName;
  @override
  String? get phoneNo;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationModelCopyWith<_$_RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
