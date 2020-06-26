import 'package:photo_no_swiping/constants/app_strings.dart';
import 'package:photo_no_swiping/app/views/splash_screen.dart';
import 'package:photo_no_swiping/customTheme.dart';
import 'package:photo_no_swiping/routing/routes.dart';
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
