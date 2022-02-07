import 'package:flutter/material.dart';
import 'package:sw_list_escribo/HomePage.dart';

main() {
  runApp(SWList());
}

class SWList extends StatelessWidget {
  const SWList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SW List for Escribo",
      home: HomePage(),
    );
  }
}
