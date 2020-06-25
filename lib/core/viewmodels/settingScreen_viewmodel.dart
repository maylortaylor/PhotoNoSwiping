import 'package:photo_no_swiping/customTheme.dart';
import 'package:photo_no_swiping/customThemes.dart';
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
