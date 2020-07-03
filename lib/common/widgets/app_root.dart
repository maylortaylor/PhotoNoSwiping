import 'package:photo_no_swiping/common/constants/app_strings.dart';
import 'package:photo_no_swiping/views/splash_screen.dart';
import 'package:photo_no_swiping/theme/custom_theme.dart';
import 'package:photo_no_swiping/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: AppStrings.appName,
      onGenerateRoute: Router.onGenerateRoute,
      theme: CustomTheme.of(context),
      home: SplashScreen(),
    );
  }
}
