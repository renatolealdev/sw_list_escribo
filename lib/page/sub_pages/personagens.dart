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

  Future<void> loadPeople() async {
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
    loadPeople();
  }

  @override
  Widget build(BuildContext context) {
    return 
  }
}
