// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lilt_app/colors/color_constants.dart';

class PurchasePanel extends StatelessWidget {
  final String rate;
  final String monthno;
  final String feature1;
  final String freatur2;

  const PurchasePanel({
    Key? key,
    required this.rate,
    required this.monthno,
    required this.feature1,
    required this.freatur2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 27, right: 27),
      height: MediaQuery.of(context).size.height / 3.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.black),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Text(
              rate,
              style: TextStyle(
                  color: AppColor.yellowColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(monthno,
              style: TextStyle(
                  color: AppColor.yellowColor, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Text(feature1,
              style: TextStyle(
                  color: AppColor.yellowColor, fontWeight: FontWeight.bold)),
          Text(freatur2,
              style: TextStyle(
                  color: Color.fromRGBO(255, 221, 49, 1),
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          SizedBox(
            height: 40,
            width: 120,
            child: FloatingActionButton.extended(
                backgroundColor: AppColor.yellowColor,
                onPressed: () {},
                label: Text(
                  'UPGRADE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
