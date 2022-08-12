import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilt_app/pages/profile_page.dart';
import 'package:lilt_app/pages/settings.dart';

import '../colors/color_constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Icon(CupertinoIcons.bell, color: AppColor.whitishGrey),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return SettingsScreen();
                },
              ));
            },
            icon: Icon(
              CupertinoIcons.settings,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ProfilePage();
                },
              ));
            },
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.white,
            )),
      ],
    );
  }
}
