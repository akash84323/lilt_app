// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  final String artist;
  final String artistName;
  const ArtistCard({
    Key? key,
    required this.artist,
    required this.artistName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            margin: const EdgeInsets.only(left: 15),
            width: 130,
            height: 130,
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: CircleAvatar(
                backgroundImage: AssetImage(artist),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              artistName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
