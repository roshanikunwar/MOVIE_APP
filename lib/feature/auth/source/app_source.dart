import 'package:flutter_online_course/core/utils/hive_storage.dart';

class AppSource {
  AppSource(this._hiveUtils);

  HiveUtils _hiveUtils;

  bool checkIfUserIsLoggedInPreviously() {
    return _hiveUtils.getLoggedInStatus();
  }
}
