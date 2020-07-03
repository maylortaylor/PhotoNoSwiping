import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_no_swiping/common/widgets/app_root.dart';
import 'package:photo_no_swiping/theme/custom_theme.dart';
import 'package:photo_no_swiping/theme/app_themes.dart';
import 'package:photo_no_swiping/common/utils/json_util.dart';
// import 'package:photo_no_swiping/utils/sharedPref_util.dart';
import 'package:photo_no_swiping/models/env.dart';

void main() {
  debugPaintSizeEnabled = false;

  WidgetsFlutterBinding.ensureInitialized();

  parseJsonFromAssets('assets/prod.env.json').then((dynamic data) async {
    // SharedPreferencesService prefs =
    //     await SharedPreferencesService.getInstance();
    // Brightness brightness =
    //     (prefs.darkMode ?? false) ? Brightness.dark : Brightness.light;

    BuildEnvironment.init(
        flavor: BuildFlavor.production, appName: data['APP_NAME']);

    assert(env != null);

    runApp(CustomTheme(
        initialThemeKey: AppThemeKeys.LIGHT, child: AppRootWidget()));
  });
}
