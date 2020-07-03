import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_no_swiping/common/widgets/app_root.dart';
import 'package:photo_no_swiping/theme/theme_notifier.dart';
import 'package:photo_no_swiping/theme/app_themes.dart';
import 'package:photo_no_swiping/common/utils/json_util.dart';
import 'package:photo_no_swiping/models/env.dart';
import 'package:provider/provider.dart';

void main() {
  debugPaintSizeEnabled = false;

  WidgetsFlutterBinding.ensureInitialized();

  parseJsonFromAssets('assets/prod.env.json').then((dynamic data) async {
    BuildEnvironment.init(
        flavor: BuildFlavor.production, appName: data['APP_NAME']);

    assert(env != null);

    runApp(ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(AppThemes.dark),
      child: AppRootWidget(),
    ));
  });
}
