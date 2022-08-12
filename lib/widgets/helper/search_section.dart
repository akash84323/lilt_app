import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
        ),
        child: TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              hintText: 'Search for songs, albums or artists',
              hintStyle: TextStyle(fontSize: 15),
              suffixIcon: Icon(
                CupertinoIcons.mic,
                color: Colors.black,
              ),
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
              contentPadding: const EdgeInsets.all(10),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(26)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(26))),
        ));
  }
}
