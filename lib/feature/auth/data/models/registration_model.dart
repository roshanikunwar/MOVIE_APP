import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration_model.freezed.dart';
part 'registration_model.g.dart';
//MANUAL WAY OF CREATING MODEL
// class RegistrationModel {
//   RegistrationModel({
//     this.email,
//     this.username,
//     this.password,
//     this.firstName,
//     this.lastName,
//     this.collegeName,
//     this.phoneNo,
//   });
//
//   final String? email;
//   final String? username;
//   final String? password;
//   final String? firstName;
//   final String? lastName;
//   final String? collegeName;
//   final String? phoneNo;
//
//   Map<String, dynamic> toJson() => {
//         'email': email,
//         'username': username,
//         'password': password,
//         'firstName': firstName,
//         'lastName': lastName,
//         'collegeName': collegeName,
//         'phoneNo': phoneNo,
//       };
//
//   factory RegistrationModel.fromJson(json) {
//     return RegistrationModel(
//       email: json['email'],
//       username: json['username'],
//       password: json['password'],
//       firstName: json['firstName'],
//       lastName: json['lastName'],
//       collegeName: json['collegeName'],
//       phoneNo: json['phoneNo'],
//     );
//   }
//
//   RegistrationModel copyWith(
//       {required String email, required String username}) {
//     return RegistrationModel(
//         email: email,
//         username: username,
//         firstName: firstName,
//         lastName: lastName);
//   }
// }

///FREEZED WAY OF CREATING MODEL
@freezed
class RegistrationModel with _$RegistrationModel {
  factory RegistrationModel({
   final String? email,
    final String? username,
    final String? password,
    final String? firstName,
    final String? lastName,
    final String? collegeName,
    final String? phoneNo,
  }) = _RegistrationModel;


  factory RegistrationModel.fromJson(Map<String, Object?> json)
  => _$RegistrationModelFromJson(json);
}
