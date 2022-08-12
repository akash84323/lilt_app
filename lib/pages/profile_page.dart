import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';
import 'package:lilt_app/widgets/extra/mood_tile.dart';
import 'package:lilt_app/widgets/helper/setting_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.white,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: AppColor.darkColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Align(
                child: CircleAvatar(
                    minRadius: 60,
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 60),
                    ))),
          ),
          SizedBox(height: 20),
          Text(
            "Your Name",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 20),
          MoodTile(
            mood: "Edit Profile",
            width: 100,
          ),
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          SettingTile(
              title: "Lilt for Creaters",
              subtitle: 'Switch to creater/business account'),
          SizedBox(height: 10),
          SettingTile(
              title: "Connect to Social",
              subtitle: "(I dont have icons for this shit)"),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Log Out',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  //SizedBox(width: 40),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Switch Account',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  //SizedBox(width: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
