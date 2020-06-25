import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_no_swiping/core/constants/app_strings.dart';
import 'package:photo_no_swiping/core/views/settings_screen.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return Drawer(
        elevation: 16.0,
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(AppStrings.appNameCaps,
                    style: Theme.of(ctxt).textTheme.headline4),
                decoration:
                    BoxDecoration(color: Theme.of(ctxt).secondaryHeaderColor),
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                margin: EdgeInsets.only(bottom: 8.0),
              ),
            ),
            ListTile(
              title: Text(AppStrings.settingsCaps,
                  style: Theme.of(ctxt).textTheme.headline4),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    MaterialPageRoute(builder: (ctxt) => SettingsScreen()));
              },
            )
          ],
        ));
  }
}
