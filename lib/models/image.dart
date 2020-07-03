import 'package:image_pickers/image_pickers.dart';

class ImageModel {
  final String thumbPath;
  final String path;
  final GalleryMode galleryMode;

  ImageModel({this.path, this.galleryMode, this.thumbPath});
}
