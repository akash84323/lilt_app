import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';
import 'package:lilt_app/pages/library.dart';
import 'package:lilt_app/pages/pro_page.dart';
import 'package:lilt_app/pages/search_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screen = [HomePage(), SearchPage(), Library(), ProPage()];
    return Scaffold(
      backgroundColor: AppColor.darkColor,
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColor.greyColor,
          selectedItemColor: AppColor.whitishGrey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: (value) => setState(() {
                currentIndex = value;
              }),
          currentIndex: currentIndex,
          backgroundColor: AppColor.darkColor,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: AppColor.darkColor,
                label: 'home',
                icon: Icon(
                  CupertinoIcons.home,
                )),
            BottomNavigationBarItem(
              backgroundColor: AppColor.darkColor,
              label: 'search',
              icon: Icon(CupertinoIcons.search),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.darkColor,
              label: 'Library',
              icon: Icon(CupertinoIcons.music_albums_fill),
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColor.darkColor,
              label: 'badge',
              icon: Icon(CupertinoIcons.bolt_badge_a_fill),
            )
          ]),
    );
  }
}
