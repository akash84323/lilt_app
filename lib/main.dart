// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:lilt_app/pages/home_page.dart';
import 'package:lilt_app/pages/library.dart';
import 'package:lilt_app/pages/main_page.dart';
import 'package:lilt_app/pages/pro_page.dart';
import 'package:lilt_app/pages/profile_page.dart';
import 'package:lilt_app/pages/search_page.dart';

void main(List<String> args) {
  runApp(LiltApp());
}

class LiltApp extends StatelessWidget {
  const LiltApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MainPage(),
    );
  }
}
