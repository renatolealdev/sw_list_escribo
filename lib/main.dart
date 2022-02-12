// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sw_list_escribo/page/home_page.dart';
import 'package:sw_list_escribo/page/sub_pages/filmes.dart';
import 'package:sw_list_escribo/store/api.store.dart';
import 'package:sw_list_escribo/store/sw_list.store.dart';

main() => runApp(SWList());

class SWList extends StatefulWidget {
  const SWList({Key? key}) : super(key: key);

  @override
  State<SWList> createState() => _SWListState();
}

class _SWListState extends State<SWList> {

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        Provider<SWListStore>(
          create: (_) => SWListStore(),
        ),
        Provider<HomePage>(
          create: (_) => HomePage(),
        ),
        Provider<FilmesSubPage>(
          create: (_) => FilmesSubPage(),
        ),
        Provider<Api>(
          create: (_) => Api(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "SW List for Escribo",
        home: HomePage(),
      ),
    );
  }
}
