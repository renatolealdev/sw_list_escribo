// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sw_list_escribo/screens/home_page.dart';

class SiteOficial extends HomePage {
  final String text = "Site Oficial";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2B2B2B),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontFamily: "Kanit",
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 219, 219, 219)),
        ),
      ),
    );
  }
}
