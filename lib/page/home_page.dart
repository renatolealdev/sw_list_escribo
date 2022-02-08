// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sw_list_escribo/layout/navigation_view.dart';
import 'package:sw_list_escribo/layout/top_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final availableHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: availableHeight * 0.10,
            color: Colors.blue[900],
            child: TopView(),
          ),
          Container(
            height: availableHeight * 0.90,
            color: Colors.blue[900],
            child: NavigationView(),
          ),
        ],
      ),
    );
  }
}
