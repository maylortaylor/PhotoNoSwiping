import 'package:photo_no_swiping/constants/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {@required this.buttonText,
      @required this.onPressed,
      this.buttonColor = AppColors.accent1});
  final String buttonText;
  final Color buttonColor;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 75.0,
      child: RaisedButton(
        child: Text(buttonText),
        onPressed: onPressed,
        color: buttonColor,
        textColor: AppColors.appWhite,
        splashColor: AppColors.accent1,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
      ),
    );
  }
}
