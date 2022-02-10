import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'api.store.g.dart';

class Api = _Api with _$Api;

abstract class _Api with Store {
  final baseUrl = "https://swapi.dev/api/";

  @observable
  List filmList = [];

  @action
  Future<void> loadFilmes() async {
    final response = await http.get(Uri.parse('${baseUrl}films/'));
    Map<String, dynamic> data = jsonDecode(response.body);
    var completeList = data['results'];
    for (var element in completeList) {
      filmList.add(element['title']);
    }
    print(filmList);
  }
}
