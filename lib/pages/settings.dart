// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilt_app/widgets/extra/switch_tile.dart';

import 'package:lilt_app/colors/color_constants.dart';

import '../widgets/extra/glowing_tile.dart';
import '../widgets/helper/setting_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(CupertinoIcons.back, color: Colors.white)),
        title: Text("Settings", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: [
          SettingTile(
              title: 'Language',
              subtitle: 'Change Language',
              icon: CupertinoIcons.right_chevron),
          SizedBox(height: 10),
          GlowingTile(),
          SizedBox(height: 15),
          SwitchTile(
              title: "Data Saver",
              subtitle: 'set audio quality to (24kbits/s)'),
          SizedBox(height: 15),
          SwitchTile(
              title: "AutoPlay",
              subtitle: 'autoplay similar songs after a song ends'),
          SizedBox(height: 15),
          SettingTile(title: "Notifications", subtitle: 'Manage Notifications'),
          SizedBox(height: 15),
          SettingTile(
              title: "Voice Search Settings", subtitle: 'Manage Notifications'),
          SizedBox(height: 15),
          SettingTile(
              title: "Earphone Audio output",
              subtitle: 'manage output settings'),
          SizedBox(height: 15),
          SettingTile(
              title: "Equalizer", subtitle: 'Manage Equalizer settings'),
          SizedBox(height: 15),
          SettingTile(title: "About", subtitle: 'Versions - 1.0.4'),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
