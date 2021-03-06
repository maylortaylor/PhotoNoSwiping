import 'package:flutter/material.dart';
import 'package:photo_no_swiping/common/constants/app_strings.dart';

/// Contains useful consts to reduce boilerplate and duplicate code
class UIHelper {
  // Vertical spacing constants. Adjust to your liking.
  static const double _VerticalSpaceSmall = 10.0;
  static const double _VerticalSpaceMedium = 20.0;
  static const double _VerticalSpaceLarge = 60.0;

  // Vertical spacing constants. Adjust to your liking.
  static const double _HorizontalSpaceSmall = 10.0;
  static const double _HorizontalSpaceMedium = 20.0;
  static const double _HorizontalSpaceLarge = 60.0;

  static const Widget verticalSpaceSmall =
      SizedBox(height: _VerticalSpaceSmall);
  static const Widget verticalSpaceMedium =
      SizedBox(height: _VerticalSpaceMedium);
  static const Widget verticalSpaceLarge =
      SizedBox(height: _VerticalSpaceLarge);

  static const Widget horizontalSpaceSmall =
      SizedBox(width: _HorizontalSpaceSmall);
  static const Widget horizontalSpaceMedium =
      SizedBox(width: _HorizontalSpaceMedium);
  static const Widget horizontalSpaceLarge =
      SizedBox(width: _HorizontalSpaceLarge);

  static Widget noImage = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
        image: noImageAsset,
        fit: BoxFit.cover,
      ),
    ),
  );

  static const AssetImage noImageAsset = AssetImage(AppStrings.noImage);

  static const Widget defaultLoading = CircularProgressIndicator();
}
