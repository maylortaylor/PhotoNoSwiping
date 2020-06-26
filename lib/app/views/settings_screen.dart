import 'package:photo_no_swiping/constants/app_strings.dart';
import 'package:photo_no_swiping/constants/app_theme.dart';
import 'package:photo_no_swiping/app/viewmodels/settingScreen_viewmodel.dart';
import 'package:photo_no_swiping/app/views/drawerOnly.dart';
import 'package:photo_no_swiping/common_widgets/base_widget.dart';
import 'package:photo_no_swiping/common_widgets/custom_button.dart';
import 'package:photo_no_swiping/appThemes.dart';
import 'package:photo_no_swiping/utils/ui_util.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SettingsScreenViewModel>(
        model: SettingsScreenViewModel(),
        builder: (context, model, child) => Scaffold(
              drawer: DrawerOnly(),
              body: Scaffold(
                appBar: AppBar(
                  title: Text(
                    AppStrings.appName,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                body: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: ListView(
                      children: <Widget>[
                        UIHelper.verticalSpaceMedium,
                        CustomButton(
                          buttonText: AppStrings.settingLight,
                          onPressed: () {
                            model.changeTheme(context, AppThemeKeys.LIGHT);
                          },
                          buttonColor: Theme.of(context).buttonColor,
                        ),
                        UIHelper.verticalSpaceSmall,
                        CustomButton(
                          buttonText: AppStrings.settingDark,
                          onPressed: () {
                            model.changeTheme(context, AppThemeKeys.DARK);
                          },
                          buttonColor: AppColors.appBlack,
                        ),
                        UIHelper.verticalSpaceSmall,
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
