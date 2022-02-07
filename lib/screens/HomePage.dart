// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final availableHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: availableHeight * 0.10,
            color: Colors.deepPurple[200],
          ),
          Container(
            height: availableHeight * 0.10,
            color: Colors.deepPurple[400],
          ),
          Container(
            height: availableHeight * 0.80,
            color: Colors.deepPurple[600],
          ),
        ],
      ),
    );
  }
}
