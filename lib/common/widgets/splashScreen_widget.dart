import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  final dynamic image;

  const SplashScreenWidget({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //getting screen size
    final Size size = MediaQuery.of(context).size;

    //calculating container width
    double imageSize;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      imageSize = size.width * 1;
    } else {
      imageSize = size.height * 1;
    }

    return Image.asset(
      image,
      height: imageSize,
      fit: BoxFit.scaleDown,
    );
  }
}
