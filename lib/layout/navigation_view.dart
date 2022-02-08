// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sw_list_escribo/components/tabs.dart';
import 'package:sw_list_escribo/page/sub_pages/favoritos.dart';
import 'package:sw_list_escribo/page/sub_pages/filmes.dart';
import 'package:sw_list_escribo/page/sub_pages/personagens.dart';
import 'package:sw_list_escribo/store/sw_list.store.dart';

class NavigationView extends StatefulWidget {
  NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  late PageController pagesController;

  @override
  void initState() {
    super.initState();
    pagesController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SWListStore>(context);

    setPaginaAtual(pagina) {
      setState(() {
        store.currentPageView = pagina;
      });
    }

    return LayoutBuilder(
      builder: (context, constraints) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Observer(
            builder: (_) => SizedBox(
              height: constraints.maxHeight * 0.08,
              child: Row(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.08,
                    width: (constraints.maxWidth) * (1 / 3),
                    child: GestureDetector(
                      child: Tabs(
                        text: "Filmes",
                        iconName: Icons.movie_filter_rounded,
                        color: (store.currentPageView == 0)
                            ? Colors.blueGrey.shade800
                            : Color(0xFF2B2B2B),
                      ),
                      onTap: () {
                        pagesController.animateToPage(0,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.08,
                    width: (constraints.maxWidth) * (1 / 3),
                    child: GestureDetector(
                      child: Tabs(
                        text: "Personagens",
                        iconName: Icons.recent_actors_rounded,
                        color: (store.currentPageView == 1)
                            ? Colors.blueGrey.shade800
                            : Color(0xFF2B2B2B),
                      ),
                      onTap: () {
                        pagesController.animateToPage(1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.08,
                    width: (constraints.maxWidth) * (1 / 3),
                    child: GestureDetector(
                      child: Tabs(
                        text: "Favoritos",
                        iconName: Icons.star_rounded,
                        color: (store.currentPageView == 2)
                            ? Colors.blueGrey.shade800
                            : Color(0xFF2B2B2B),
                      ),
                      onTap: () {
                        pagesController.animateToPage(2,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.92,
            child: Scaffold(
              backgroundColor: Color(0xFF111111),
              body: PageView(
                controller: pagesController,
                children: [
                  FilmesSubPage(),
                  PersonagensSubPages(),
                  FavoritosSubPage(),
                ],
                onPageChanged: setPaginaAtual,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
