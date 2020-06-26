import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:photo_no_swiping/constants/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_no_swiping/app/viewmodels/homeScreen_viewmodel.dart';
import 'package:photo_no_swiping/app/views/drawerOnly.dart';
import 'package:photo_no_swiping/common_widgets/base_widget.dart';
import 'package:photo_no_swiping/common_widgets/swiper_image.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLocked = false;
  List<SwiperImage> _selectedImages = [];
  SwiperController swipercontroller;

  @override
  void initState() {
    swipercontroller = new SwiperController();
    super.initState();
  }

  Widget showImage() {
    return Column(
      children: <Widget>[
        Expanded(
          child: _selectedImages.length <= 0
              ? Container()
              : Swiper(
                  controller: swipercontroller,
                  pagination: SwiperPagination(),
                  itemCount:
                      _selectedImages == null ? 0 : _selectedImages.length,
                  viewportFraction: 1,
                  scale: 0,
                  itemBuilder: (BuildContext context, int index) {
                    return SwiperImageContainer(_selectedImages[index]);
                  },
                ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeScreenViewModel>(
        model:
            // HomeScreenViewModel(sharedPreferencesService: Provider.of(context)),
            HomeScreenViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: isLocked == true
                  ? null
                  : AppBar(
                      title: Text(
                        AppStrings.appName,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
              drawer: isLocked == true ? null : DrawerOnly(),
              body: isLocked == true ? showImage() : Container(),
              floatingActionButton: isLocked == true
                  ? null
                  : FloatingActionButton(
                      tooltip: AppStrings.pickImage,
                      child: Icon(Icons.photo_library),
                      backgroundColor: Theme.of(context).primaryColor,
                      onPressed: () {
                        model.selectImages(context).then((selectedImages) {
                          List<SwiperImage> tempSelectedImages = [];
                          for (var i = 0; i < selectedImages.length; i++) {
                            tempSelectedImages.add(SwiperImage(
                                isAsset: false,
                                path: selectedImages[i].path,
                                thumb: selectedImages[i].thumbPath));
                          }
                          tempSelectedImages.add(SwiperImage(
                              isAsset: true,
                              path: AppStrings.noSwipingGif,
                              thumb: AppStrings.noSwipingGif));

                          setState(() {
                            isLocked = true;
                            _selectedImages.clear();
                            _selectedImages.addAll(tempSelectedImages);
                          });
                        });
                      },
                    ),
            ));
  }
}
