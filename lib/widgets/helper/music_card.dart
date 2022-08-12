// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final String image;
  final String name;
  const MusicCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 15),
            width: 130,
            height: 130,
            child: Card(
                child: Image.asset(
              image,
              fit: BoxFit.fill,
            ))),
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
