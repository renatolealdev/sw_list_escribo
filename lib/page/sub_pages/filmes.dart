// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sw_list_escribo/store/api.store.dart';

class FilmesSubPage extends StatefulWidget {
  const FilmesSubPage({Key? key}) : super(key: key);

  @override
  State<FilmesSubPage> createState() => _FilmesSubPageState();
}

class _FilmesSubPageState extends State<FilmesSubPage> {
  final api = Api();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[800],
        child: Center(
          child: ListView.builder(
            itemCount: api.filmList.length,
            itemBuilder: (context, index) {
              return Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 200, 200, 200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(api.filmList[index]),
                            Icon(Icons.favorite_border),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
