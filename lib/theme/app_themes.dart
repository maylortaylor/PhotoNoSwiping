import 'package:photo_no_swiping/common/constants/app_theme.dart';
import 'package:flutter/material.dart';

enum AppThemeKeys { LIGHT, DARK, DARKER }

class AppThemes {
  static TextTheme _buildTextTheme(TextTheme baseTheme, bool isDark) {
    return baseTheme.copyWith(
        headline1: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
            fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontSize: 34.0,
            fontWeight: FontWeight.w500),
        headline2: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
            fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontSize: 30.0,
            fontWeight: FontWeight.w400),
        headline3: TextStyle(
          color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
          fontSize: 28.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w300,
          // shadows: [
          //   // TODO upgrade to use: https://github.com/tewshi/bordered-text
          //   Shadow(
          //       // bottomLeft
          //       offset: Offset(-1, -1),
          //       color: Colors.black),
          //   Shadow(
          //       // bottomRight
          //       offset: Offset(1, -1),
          //       color: Colors.black),
          //   Shadow(
          //       // topRight
          //       offset: Offset(1, 1),
          //       color: Colors.black),
          //   Shadow(
          //       // topLeft
          //       offset: Offset(-1, 1),
          //       color: Colors.black),
          // ]
        ),
        headline4: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appBlack,
            fontSize: 28.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w800),
        headline5: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
            fontSize: 26.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300),
        headline6: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
            fontSize: 24.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w300),
        subtitle1: TextStyle(
          color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
          fontFamily: 'Montserrat',
          fontSize: 12.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          // shadows: [
          //   // TODO upgrade to use: https://github.com/tewshi/bordered-text
          //   Shadow(
          //       // bottomLeft
          //       offset: Offset(-1, -1),
          //       color: Colors.black),
          //   Shadow(
          //       // bottomRight
          //       offset: Offset(1, -1),
          //       color: Colors.black),
          //   Shadow(
          //       // topRight
          //       offset: Offset(1, 1),
          //       color: Colors.black),
          //   Shadow(
          //       // topLeft
          //       offset: Offset(-1, 1),
          //       color: Colors.black),
          // ]
        ),
        subtitle2: TextStyle(
          color: isDark ? AppColors.appOffWhite : AppColors.appWhite,
          fontFamily: 'Montserrat',
          fontSize: 10.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          // shadows: [
          //   // TODO upgrade to use: https://github.com/tewshi/bordered-text
          //   Shadow(
          //       // bottomLeft
          //       offset: Offset(-1, -1),
          //       color: Colors.black),
          //   Shadow(
          //       // bottomRight
          //       offset: Offset(1, -1),
          //       color: Colors.black),
          //   Shadow(
          //       // topRight
          //       offset: Offset(1, 1),
          //       color: Colors.black),
          //   Shadow(
          //       // topLeft
          //       offset: Offset(-1, 1),
          //       color: Colors.black),
          // ]
        ),
        overline: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appBlack,
            fontFamily: 'Montserrat',
            fontSize: 22.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        caption: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appBlack,
            fontFamily: 'Montserrat',
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal),
        bodyText1: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appBlack,
            fontFamily: 'Montserrat',
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal),
        bodyText2: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appBlack,
            fontFamily: 'Montserrat',
            fontSize: 14.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal),
        button: TextStyle(
            color: isDark ? AppColors.appOffWhite : AppColors.appBlack,
            fontFamily: 'Montserrat',
            fontSize: 14.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal));
  }

  static AppBarTheme _buildAppBarTheme(AppThemeKeys themeKey) {
    switch (themeKey) {
      case AppThemeKeys.DARK:
        return AppBarTheme(
          elevation: 0.0,
          color: AppColors.appSwatchDark[900],
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        );
      case AppThemeKeys.DARKER:
        return AppBarTheme(
            elevation: 0.0,
            color: AppColors.appBlack,
            iconTheme: IconThemeData(
              color: Colors.white,
            ));
      case AppThemeKeys.LIGHT:
      default:
        return AppBarTheme(
            elevation: 0.0,
            color: AppColors.appSwatch[500],
            iconTheme: IconThemeData(
              color: Colors.white,
            ));
    }
  }

  static FloatingActionButtonThemeData _getFabTheme(AppThemeKeys themeKey) {
    switch (themeKey) {
      case AppThemeKeys.DARK:
        return FloatingActionButtonThemeData(
            elevation: 0.0,
            focusElevation: 20.0,
            hoverElevation: 20.0,
            disabledElevation: 0.0,
            highlightElevation: 20.0,
            backgroundColor: AppColors.appDarkGrey,
            foregroundColor: AppColors.appWhite,
            focusColor: AppColors.accent2,
            hoverColor: AppColors.accent3,
            shape: BeveledRectangleBorder());
      case AppThemeKeys.LIGHT:
      default:
        return FloatingActionButtonThemeData(
          elevation: 0.0,
          focusElevation: 20.0,
          hoverElevation: 20.0,
          disabledElevation: 0.0,
          highlightElevation: 20.0,
          backgroundColor: AppColors.appSwatch[500],
          foregroundColor: AppColors.appWhite,
          focusColor: AppColors.accent2,
          hoverColor: AppColors.accent3,
        );
    }
  }

  static final ThemeData baseTheme = ThemeData(
    primarySwatch: AppColors.appSwatch,
    fontFamily: 'Montserrat',
    errorColor: Colors.red,
    bottomAppBarColor: AppColors.appSwatch[500],
  );

  static bool getIsDark(AppThemeKeys themeKey) {
    switch (themeKey) {
      case AppThemeKeys.DARK:
        return true;
      case AppThemeKeys.DARKER:
        return true;
      case AppThemeKeys.LIGHT:
      default:
        return false;
    }
  }

  static ThemeData get dark => getThemeFromKey(AppThemeKeys.DARK);
  static ThemeData get light => getThemeFromKey(AppThemeKeys.LIGHT);

  static ThemeData getThemeFromKey(AppThemeKeys themeKey) {
    switch (themeKey) {
      case AppThemeKeys.DARK:
        return baseTheme.copyWith(
          backgroundColor: AppColors.appBlack,
          textTheme: _buildTextTheme(baseTheme.textTheme, getIsDark(themeKey)),
          appBarTheme: _buildAppBarTheme(themeKey),
          floatingActionButtonTheme: _getFabTheme(themeKey),
          tabBarTheme: baseTheme.tabBarTheme.copyWith(
            labelColor: AppColors.accent3,
            unselectedLabelColor: AppColors.accent1,
          ),
          brightness: Brightness.dark,
          canvasColor: AppColors.appDarkGrey,
          iconTheme: IconThemeData(
            color: AppColors.accent1,
            size: 20.0,
          ),
          buttonColor: AppColors.accent2,
          indicatorColor: AppColors.appSecondaryColor,
          highlightColor: Colors.yellowAccent,
          textSelectionColor: Colors.yellowAccent,
          unselectedWidgetColor: AppColors.accent1,
          secondaryHeaderColor: AppColors.accent2,
          dialogBackgroundColor: AppColors.appWhite,
          scaffoldBackgroundColor: AppColors.appDarkGrey,
        );
      case AppThemeKeys.LIGHT:
      default:
        return baseTheme.copyWith(
          textTheme: _buildTextTheme(baseTheme.textTheme, getIsDark(themeKey)),
          appBarTheme: _buildAppBarTheme(themeKey),
          floatingActionButtonTheme: _getFabTheme(themeKey),
          tabBarTheme: baseTheme.tabBarTheme.copyWith(
            labelColor: AppColors.accent3,
            unselectedLabelColor: AppColors.appGrey,
          ),
          brightness: Brightness.light,
          canvasColor: AppColors.appOffWhite,
          iconTheme: IconThemeData(
            color: AppColors.appDarkGrey,
            size: 20.0,
          ),
          accentColor: AppColors.accent2,
          buttonColor: AppColors.accent2,
          indicatorColor: AppColors.appSecondaryColor,
          highlightColor: Colors.yellowAccent,
          textSelectionColor: Colors.yellowAccent,
          unselectedWidgetColor: AppColors.appSwatchDark.shade900,
          secondaryHeaderColor: AppColors.accent2,
          dialogBackgroundColor: AppColors.appDarkGrey,
          scaffoldBackgroundColor: AppColors.appOffWhite,
        );
    }
  }
}
