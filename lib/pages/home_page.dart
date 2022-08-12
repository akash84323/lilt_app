import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';
import 'package:lilt_app/widgets/panels/other_panels.dart';

import '../widgets/app_bar.dart';
import '../widgets/helper/divider.dart';
import '../widgets/panels/artist_panel.dart';
import '../widgets/panels/main_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(),
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              MainPanel(),
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
