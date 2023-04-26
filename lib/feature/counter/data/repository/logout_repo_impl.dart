import 'package:flutter_online_course/feature/counter/data/data_source/logout_data_source.dart';

class LogoutRepoImpl {
  LogoutRepoImpl(this._logoutDataSource);

  final LogoutDataSource _logoutDataSource;

  void logoutUser() {
    _logoutDataSource.logoutUser();
  }



}