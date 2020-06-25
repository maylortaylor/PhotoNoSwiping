import 'package:photo_no_swiping/core/constants/app_strings.dart';
import 'package:photo_no_swiping/core/constants/app_theme.dart';
import 'package:photo_no_swiping/core/viewmodels/settingScreen_viewmodel.dart';
import 'package:photo_no_swiping/core/views/drawerOnly.dart';
import 'package:photo_no_swiping/core/widgets/base_widget.dart';
import 'package:photo_no_swiping/core/widgets/custom_button.dart';
import 'package:photo_no_swiping/customThemes.dart';
import 'package:photo_no_swiping/utils/ui_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SettingsScreenViewModel>(
        model: SettingsScreenViewModel(
            sharedPreferencesService: Provider.of(context)),
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
