import 'package:photo_no_swiping/common/constants/app_strings.dart';
import 'package:photo_no_swiping/common/constants/app_theme.dart';
import 'package:photo_no_swiping/view_models/settingScreen_viewmodel.dart';
import 'package:photo_no_swiping/common/widgets/drawer_only.dart';
import 'package:photo_no_swiping/common/widgets/base_widget.dart';
import 'package:photo_no_swiping/common/widgets/custom_button.dart';
import 'package:photo_no_swiping/theme/app_themes.dart';
import 'package:photo_no_swiping/common/utils/ui_util.dart';
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