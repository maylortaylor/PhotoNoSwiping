import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_no_swiping/appRoot.dart';
import 'package:photo_no_swiping/customTheme.dart';
import 'package:photo_no_swiping/customThemes.dart';
import 'package:photo_no_swiping/utils/json_util.dart';
import 'package:photo_no_swiping/utils/sharedPref_util.dart';
import 'package:photo_no_swiping/env.dart';

void main() {
  debugPaintSizeEnabled = false;

  WidgetsFlutterBinding.ensureInitialized();

  parseJsonFromAssets('assets/dev.env.json').then((dynamic data) async {
    debugPrint('--- Parsed env.json: $data');

    SharedPreferencesService prefs =
        await SharedPreferencesService.getInstance();
    Brightness brightness =
        (prefs.darkMode ?? false) ? Brightness.dark : Brightness.light;

    BuildEnvironment.init(
        flavor: BuildFlavor.production, appName: data['APP_NAME']);

    assert(env != null);

    runApp(CustomTheme(
        initialThemeKey: AppThemeKeys.LIGHT, child: AppRootWidget()));
  });
}
