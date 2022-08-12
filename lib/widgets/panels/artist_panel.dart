// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lilt_app/widgets/helper/artist_card.dart';

import '../../colors/color_constants.dart';

class ArtistPanel extends StatelessWidget {
  final String mainText;
  const ArtistPanel({
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
                    ArtistCard(
                      artist: 'images/Camila Loreal Havana Headshot.jpg',
                      artistName: 'Camila Cabello',
                    ),
                    ArtistCard(
                      artist: 'images/coldplay.jpg',
                      artistName: 'ColdPlay',
                    ),
                    ArtistCard(
                      artist: 'images/shreyagoshal.jpg',
                      artistName: 'Shreya Goshal',
                    ),
                    ArtistCard(
                      artist: 'images/harry-styles.jpg',
                      artistName: 'Harry Styles',
                    ),
                    ArtistCard(
                      artist: 'images/akali.jpg',
                      artistName: 'KDA All-Out',
                    ),
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
