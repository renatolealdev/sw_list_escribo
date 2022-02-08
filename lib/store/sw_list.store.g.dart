// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sw_list.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SWListStore on _SWListStore, Store {
  final _$currentPageViewAtom = Atom(name: '_SWListStore.currentPageView');

  @override
  int get currentPageView {
    _$currentPageViewAtom.reportRead();
    return super.currentPageView;
  }

  @override
  set currentPageView(int value) {
    _$currentPageViewAtom.reportWrite(value, super.currentPageView, () {
      super.currentPageView = value;
    });
  }

  final _$filmesColorTabAtom = Atom(name: '_SWListStore.filmesColorTab');

  @override
  bool get filmesColorTab {
    _$filmesColorTabAtom.reportRead();
    return super.filmesColorTab;
  }

  @override
  set filmesColorTab(bool value) {
    _$filmesColorTabAtom.reportWrite(value, super.filmesColorTab, () {
      super.filmesColorTab = value;
    });
  }

  final _$personagensColorTabAtom =
      Atom(name: '_SWListStore.personagensColorTab');

  @override
  bool get personagensColorTab {
    _$personagensColorTabAtom.reportRead();
    return super.personagensColorTab;
  }

  @override
  set personagensColorTab(bool value) {
    _$personagensColorTabAtom.reportWrite(value, super.personagensColorTab, () {
      super.personagensColorTab = value;
    });
  }

  final _$favoritosColorTabAtom = Atom(name: '_SWListStore.favoritosColorTab');

  @override
  bool get favoritosColorTab {
    _$favoritosColorTabAtom.reportRead();
    return super.favoritosColorTab;
  }

  @override
  set favoritosColorTab(bool value) {
    _$favoritosColorTabAtom.reportWrite(value, super.favoritosColorTab, () {
      super.favoritosColorTab = value;
    });
  }

  final _$_SWListStoreActionController = ActionController(name: '_SWListStore');

  @override
  dynamic filmesForTrue() {
    final _$actionInfo = _$_SWListStoreActionController.startAction(
        name: '_SWListStore.filmesForTrue');
    try {
      return super.filmesForTrue();
    } finally {
      _$_SWListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic personagensForTrue() {
    final _$actionInfo = _$_SWListStoreActionController.startAction(
        name: '_SWListStore.personagensForTrue');
    try {
      return super.personagensForTrue();
    } finally {
      _$_SWListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic favoritosForTrue() {
    final _$actionInfo = _$_SWListStoreActionController.startAction(
        name: '_SWListStore.favoritosForTrue');
    try {
      return super.favoritosForTrue();
    } finally {
      _$_SWListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPageView: ${currentPageView},
filmesColorTab: ${filmesColorTab},
personagensColorTab: ${personagensColorTab},
favoritosColorTab: ${favoritosColorTab}
    ''';
  }
}
