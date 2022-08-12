import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';
import 'package:lilt_app/widgets/panels/other_panels.dart';

import '../widgets/helper/divider.dart';
import '../widgets/helper/likedsongs.dart';
import '../widgets/panels/artist_panel.dart';
import '../widgets/panels/liked_panel.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Library",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TheDivider(),
              LikedSongs(),
              SizedBox(height: 15),
              LikedPanel(),
              SizedBox(height: 20),
              TheDivider(),
              SizedBox(height: 20),
              OtherPanel(mainText: 'Jump Back In'),
              SizedBox(height: 20),
              TheDivider(),
              SizedBox(height: 20),
              ArtistPanel(mainText: 'Artists You Like'),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
