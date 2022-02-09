import 'package:mobx/mobx.dart';

part 'sw_list.store.g.dart';

class SWListStore = _SWListStore with _$SWListStore;

abstract class _SWListStore with Store {

  @observable
  int currentPageView = 0;

  @observable
  bool filmesColorTab = true;

  @observable
  bool personagensColorTab = false;

  @observable
  bool favoritosColorTab = false;

  @observable
  bool siteOficialColorButtom = false;

  @action
  filmesForTrue() {
    filmesColorTab = true;
    personagensColorTab = false;
    favoritosColorTab = false;
    siteOficialColorButtom = false;
  }

  @action
  personagensForTrue() {
    personagensColorTab = true;
    filmesColorTab = false;
    favoritosColorTab = false;
    siteOficialColorButtom = false;
  }

  @action
  favoritosForTrue() {
    favoritosColorTab = true;
    filmesColorTab = false;
    personagensColorTab = false;
    siteOficialColorButtom = false;
  }

  @action
  siteOficialForTrue() {
    siteOficialColorButtom = true;
    favoritosColorTab = false;
    filmesColorTab = false;
    personagensColorTab = false;
  }
}
