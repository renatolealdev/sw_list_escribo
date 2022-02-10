import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PersonagensSubPages extends StatefulWidget {
  const PersonagensSubPages({Key? key}) : super(key: key);

  @override
  State<PersonagensSubPages> createState() => _PersonagensSubPagesState();
}

class _PersonagensSubPagesState extends State<PersonagensSubPages> {

  final baseUrl = "https://swapi.dev/api/";
  var completeList = [];
  List personList = [];

  Future<void> loadFilmes() async {
    final response = await http.get(Uri.parse('${baseUrl}people/'));
    Map<String, dynamic> data = jsonDecode(response.body);
    completeList = data['results'];
    for (var element in completeList) {
      personList.add(element['name']);
    }
    print(personList);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadFilmes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[800],
        child: Center(
          child: ListView.builder(
            itemCount: personList.length,
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
                            Text(personList[index]),
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
