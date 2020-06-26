import 'dart:async';
import 'package:flutter/material.dart';
import 'package:photo_no_swiping/constants/app_strings.dart';
import 'package:photo_no_swiping/common_widgets/splashScreen_widget.dart';
import 'package:photo_no_swiping/routing/routes.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SplashScreenWidget(image: AppStrings.splashScreenImage),
    );
  }

  Timer startTimer() {
    var _duration = Duration(milliseconds: 1000);
    return Timer(_duration, navigate);
  }

  void navigate() async {
    // SharedPreferences preferences = await SharedPreferences.getInstance();

    Navigator.of(context).pushReplacementNamed(Routes.home);
    // if (preferences.getBool(Preferences.is_logged_in) == true) {
    //   Navigator.of(context).pushReplacementNamed(Routes.home);
    // } else {
    //   Navigator.of(context).pushReplacementNamed(Routes.home);
    // }
  }
}
