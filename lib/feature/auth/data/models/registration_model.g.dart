// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationModel _$$_RegistrationModelFromJson(Map<String, dynamic> json) =>
    _$_RegistrationModel(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      collegeName: json['collegeName'] as String?,
      phoneNo: json['phoneNo'] as String?,
    );

Map<String, dynamic> _$$_RegistrationModelToJson(
        _$_RegistrationModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'collegeName': instance.collegeName,
      'phoneNo': instance.phoneNo,
    };
