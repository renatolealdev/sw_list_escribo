// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sw_list_escribo/screens/HomePage.dart';

main() => runApp(SWList());

class SWList extends StatelessWidget {
  const SWList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SW List for Escribo",
      home: HomePage(),
    );
  }
}
