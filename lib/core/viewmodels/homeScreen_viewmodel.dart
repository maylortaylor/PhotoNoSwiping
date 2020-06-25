import 'package:photo_no_swiping/core/constants/app_theme.dart';
import 'package:photo_no_swiping/utils/sharedpref_util.dart';
import 'package:flutter/material.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:image_pickers/CropConfig.dart';
import 'package:image_pickers/Media.dart';
import 'package:image_pickers/UIConfig.dart';

class HomeScreenViewModel extends ChangeNotifier {
  SharedPreferencesService _sharedPreferencesService;

  HomeScreenViewModel(
      {@required SharedPreferencesService sharedPreferencesService})
      : _sharedPreferencesService = sharedPreferencesService;

  Future<List<Media>> selectImages(BuildContext context) async {
    List<Media> _listImagePaths = await ImagePickers.pickerPaths(
        galleryMode: GalleryMode.image,
        selectCount: 8,
        showCamera: false,
        compressSize: 500,
        uiConfig: UIConfig(uiThemeColor: Theme.of(context).cardColor),
        cropConfig: CropConfig(enableCrop: false, width: 2, height: 1));
    return _listImagePaths;
  }
}
