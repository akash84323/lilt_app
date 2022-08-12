import 'package:flutter/material.dart';

import '../../colors/color_constants.dart';

class GlowingTile extends StatelessWidget {
  const GlowingTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Free Account',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.yellowColor.withAlpha(60),
                      blurRadius: 30,
                      spreadRadius: 10,
                      offset: Offset(3, 0))
                ]),
            width: 110,
            height: 32,
            child: FloatingActionButton.extended(
                backgroundColor: AppColor.yellowColor,
                onPressed: () {},
                label: Text("GO PRO",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17))),
          ),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}
