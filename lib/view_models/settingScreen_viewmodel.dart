import 'package:photo_no_swiping/theme/custom_Theme.dart';
import 'package:photo_no_swiping/theme/app_themes.dart';
// import 'package:photo_no_swiping/utils/sharedpref_util.dart';
import 'package:flutter/material.dart';

class SettingsScreenViewModel extends ChangeNotifier {
  // SharedPreferencesService _sharedPreferencesService;

  // SettingsScreenViewModel(
  //     {@required SharedPreferencesService sharedPreferencesService})
  //     : _sharedPreferencesService = sharedPreferencesService;

  void changeTheme(BuildContext buildContext, AppThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }
}
