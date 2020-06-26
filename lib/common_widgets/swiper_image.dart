import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_no_swiping/constants/app_theme.dart';

class SwiperImage {
  final String path;
  final String thumb;
  final bool isAsset;
  SwiperImage({this.path, this.thumb, this.isAsset});
}

class SwiperImageContainer extends StatelessWidget {
  final SwiperImage si;
  SwiperImageContainer(this.si);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).backgroundColor == AppColors.appBlack
            ? AppColors.appBlack
            : Theme.of(context).cardColor,
        child: si.isAsset == true
            ? Image.asset(si.path)
            : Image.file(File(si.path)));
  }
}
