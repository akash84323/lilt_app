// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MoodTile extends StatelessWidget {
  final String mood;
  final double height;
  final double width;
  const MoodTile(
      {Key? key, required this.mood, this.height = 28, this.width = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      height: height,
      width: width,
      child: Center(
        child: Text(
          mood,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
