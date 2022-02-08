// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final String text;
  final IconData iconName;
  const Tabs({
    Key? key,
    required this.text,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconName,
            size: 20,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
                fontFamily: "Kanit",
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
