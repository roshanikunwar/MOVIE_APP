import 'package:flutter_online_course/feature/auth/data/models/registration_model.dart';
import 'package:flutter_online_course/feature/auth/source/register_source.dart';

class RegisterRepoImpl {
  RegisterRepoImpl(this._registerSource);

  final RegisterSource _registerSource;

  /// Receives [username] and [password] from the bloc
  bool storeRegistrationData({required RegistrationModel registrationModel}) {
    return _registerSource.registerUser(registrationModel: registrationModel);
  }

  bool loginUser({required String username, required String password}) {
    return _registerSource.checkCredential(
        username: username, password: password);
  }
}
