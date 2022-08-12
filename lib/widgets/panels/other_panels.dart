// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../colors/color_constants.dart';
import '../helper/music_card.dart';

class OtherPanel extends StatelessWidget {
  final String mainText;
  const OtherPanel({
    Key? key,
    required this.mainText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.yellowColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              mainText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 355,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MusicCard(
                        image: 'images/pinkfloyd.jpg',
                        name: 'Pink Floyd - Time'),
                    MusicCard(
                        image: 'images/taylorswift.jpg',
                        name: 'Taylor Swift - Style'),
                    MusicCard(
                        image: 'images/drake.jpg', name: 'Drake - Time Flies'),
                    MusicCard(
                        image: 'images/rihanna.jpg',
                        name: 'Rihanna - Better ha..'),
                    MusicCard(image: 'images/kda.jpg', name: 'KDA - Baddest'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
