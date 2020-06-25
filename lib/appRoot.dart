import 'package:photo_no_swiping/core/constants/app_strings.dart';
import 'package:photo_no_swiping/core/views/splash_screen.dart';
import 'package:photo_no_swiping/customTheme.dart';
import 'package:photo_no_swiping/provider_setup.dart';
import 'package:photo_no_swiping/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRootWidget extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        title: AppStrings.appName,
        routes: Routes.routes,
        theme: CustomTheme.of(context),
        home: SplashScreen(),
      ),
    );
  }
}
