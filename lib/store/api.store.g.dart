// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Api on _Api, Store {
  final _$filmListAtom = Atom(name: '_Api.filmList');

  @override
  List<dynamic> get filmList {
    _$filmListAtom.reportRead();
    return super.filmList;
  }

  @override
  set filmList(List<dynamic> value) {
    _$filmListAtom.reportWrite(value, super.filmList, () {
      super.filmList = value;
    });
  }

  final _$loadFilmesAsyncAction = AsyncAction('_Api.loadFilmes');

  @override
  Future<void> loadFilmes() {
    return _$loadFilmesAsyncAction.run(() => super.loadFilmes());
  }

  @override
  String toString() {
    return '''
filmList: ${filmList}
    ''';
  }
}
