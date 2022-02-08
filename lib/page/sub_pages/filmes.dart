// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FilmesSubPage extends StatelessWidget {
  const FilmesSubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[800],
        child: Center(
          child: Text("Filmes"),
        ),
      ),
    );
  }
}
