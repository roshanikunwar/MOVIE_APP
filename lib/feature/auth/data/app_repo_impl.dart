import 'package:flutter_online_course/feature/auth/source/app_source.dart';

class AppRepoImpl {
  AppRepoImpl(this._appSource);

  AppSource _appSource;

  bool checkIfUserIsLoggedInPreviously(){

   return _appSource.checkIfUserIsLoggedInPreviously();
  }
}
