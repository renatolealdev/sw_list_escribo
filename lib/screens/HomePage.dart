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
            child: LayoutBuilder(
              builder: (context, constraints) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth * 0.40,
                    color: Colors.white,
                    child: Center(child: Text("Site Oficial")),
                  ),
                  Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth * 0.20,
                    color: Colors.yellow,
                    child: Center(
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: constraints.maxHeight * 0.9,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: (availableHeight * 0.08),
            color: Colors.deepPurple[400],
            child: LayoutBuilder(
              builder: (context, constraints) => Row(
                children: [
                  Container(
                    color: Colors.grey[300],
                    height: constraints.maxHeight,
                    width: (constraints.maxWidth) * (1 / 3),
                  ),
                  Container(
                    color: Colors.grey[500],
                    height: constraints.maxHeight,
                    width: (constraints.maxWidth) * (1 / 3),
                  ),
                  Container(
                    color: Colors.grey[700],
                    height: constraints.maxHeight,
                    width: (constraints.maxWidth) * (1 / 3),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: availableHeight * 0.82,
            color: Colors.deepPurple[600],
          ),
        ],
      ),
    );
  }
}
