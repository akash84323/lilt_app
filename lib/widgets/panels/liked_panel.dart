import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedPanel extends StatelessWidget {
  const LikedPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      width: MediaQuery.of(context).size.width / 2.4,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.pink),
      child: Column(
        children: const [
          Icon(
            CupertinoIcons.heart_fill,
            size: 85,
            color: Colors.white,
          ),
          Text(
            "Liked",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Songs",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
