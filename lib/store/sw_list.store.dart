import 'package:mobx/mobx.dart';

part 'sw_list.store.g.dart';

class SWListStore = _SWListStore with _$SWListStore;

abstract class _SWListStore with Store {
  @observable
  bool filmesColorTab = true;

  @observable
  bool personagensColorTab = false;

  @observable
  bool favoritosColorTab = false;

  @action
  filmesForTrue() {
    filmesColorTab = true;
    personagensColorTab = false;
    favoritosColorTab = false;
  }

  @action
  personagensForTrue() {
    personagensColorTab = true;
    filmesColorTab = false;
    favoritosColorTab = false;
  }

  @action
  favoritosForTrue() {
    favoritosColorTab = true;
    filmesColorTab = false;
    personagensColorTab = false;
  }
}
