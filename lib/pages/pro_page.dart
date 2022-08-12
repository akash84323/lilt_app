import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lilt_app/colors/color_constants.dart';
import 'package:lilt_app/pages/main_page.dart';

import '../widgets/helper/pro_purchase.dart';

class ProPage extends StatelessWidget {
  const ProPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LILT Pro',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MainPage(),
              ));
            },
            icon: Icon(CupertinoIcons.back, color: Colors.white)),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: 170,
                height: 70,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade800,
                      blurRadius: 7,
                      spreadRadius: -9,
                      offset: Offset(-5, -5))
                ]),
                child: Card(
                  color: AppColor.darkColor,
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Current Plan",
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                      Text(
                        "LILT Free",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              PurchasePanel(
                feature1: 'AD-FREE MUSIC',
                freatur2: 'UNLIMITED DOWNLOADS',
                rate: 'Rs 99',
                monthno: 'PER MONTH',
              ),
              SizedBox(height: 50),
              PurchasePanel(
                rate: 'Rs 239',
                feature1: 'PREVIOUS FEATURES',
                freatur2: '+PODCASET RADIO',
                monthno: 'FOR 3 MONTHS',
              ),
              SizedBox(height: 50),
              PurchasePanel(
                  rate: 'Rs 999',
                  monthno: 'FOR 6 MONTHS',
                  feature1: 'PREVIOUS FEATURES',
                  freatur2: '+FREE BURGER')
            ],
          )
        ],
      ),
    );
  }
}
