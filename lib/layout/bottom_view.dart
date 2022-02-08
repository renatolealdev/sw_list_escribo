// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sw_list_escribo/page/sub_pages/favoritos.dart';
import 'package:sw_list_escribo/page/sub_pages/filmes.dart';
import 'package:sw_list_escribo/page/sub_pages/personagens.dart';

class BottomView extends StatelessWidget {
  const BottomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/favoritos",
      routes: {
        "/": (context) => FilmesSubPage(),
        "/personagens": (context) => PersonagensSubPages(),
        "/favoritos": (context) => FavoritosSubPage(),
      },
    );
  }
}
