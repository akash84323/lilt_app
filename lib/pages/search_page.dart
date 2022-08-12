import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';

import '../widgets/extra/mood_tile.dart';
import '../widgets/helper/search_section.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Search',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SearchSection(),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text("Mood list",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 10),
              child: Row(
                children: const [
                  MoodTile(mood: 'Happy'),
                  MoodTile(mood: 'Sad'),
                  MoodTile(mood: 'Party'),
                  MoodTile(mood: 'Sleepy'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 10),
              child: Row(
                children: const [
                  MoodTile(mood: 'Study'),
                  MoodTile(mood: 'Chill'),
                  MoodTile(mood: 'Workout'),
                  MoodTile(mood: 'Love'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Divider(color: Colors.grey, thickness: 0.8)),
            SizedBox(height: 10),
            Container(),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: GridView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    children: [
                      GridTile(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                      )),
                      GridTile(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.teal),
                      )),
                      GridTile(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow),
                      )),
                      GridTile(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightGreen),
                      )),
                      GridTile(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      )),
                      GridTile(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      )),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
