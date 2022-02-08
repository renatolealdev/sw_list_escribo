// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sw_list_escribo/layout/bottom_view.dart';
import 'package:sw_list_escribo/layout/tabs_view.dart';
import 'package:sw_list_escribo/layout/top_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final availableHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: availableHeight * 0.10,
            color: Colors.deepPurple[700],
            child: TopView(),
          ),
          Container(
            height: availableHeight * 0.08,
            color: Colors.deepPurple[600],
            child: TabsView(),
          ),
          Container(
            height: availableHeight * 0.82,
            color: Colors.deepPurple[500],
            child: BottomView(),
          ),
        ],
      ),
    );
  }
}
