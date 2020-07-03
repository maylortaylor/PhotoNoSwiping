import 'package:flutter/material.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:image_pickers/CropConfig.dart';
import 'package:image_pickers/UIConfig.dart';
import 'package:photo_no_swiping/models/image.dart';

class HomeScreenViewModel extends ChangeNotifier {
  List<ImageModel> imagePaths = List<ImageModel>();
  // SharedPreferencesService _sharedPreferencesService;

  // HomeScreenViewModel(
  //     {@required SharedPreferencesService sharedPreferencesService})
  //     : _sharedPreferencesService = sharedPreferencesService;

  Future<List<ImageModel>> selectImages(BuildContext context) async {
    final results = await ImagePickers.pickerPaths(
        galleryMode: GalleryMode.image,
        selectCount: 8,
        showCamera: false,
        compressSize: 500,
        uiConfig: UIConfig(uiThemeColor: Theme.of(context).cardColor),
        cropConfig: CropConfig(enableCrop: false, width: 2, height: 1));

    this.imagePaths = results
        .map((item) => (ImageModel(
            path: item.path,
            galleryMode: item.galleryMode,
            thumbPath: item.thumbPath)))
        .toList();

    print(this.imagePaths);
    notifyListeners();
    return this.imagePaths;
  }
}
