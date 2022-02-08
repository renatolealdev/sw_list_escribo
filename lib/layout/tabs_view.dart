// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sw_list_escribo/components/tabs.dart';
import 'package:sw_list_escribo/store/sw_list.store.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SWListStore>(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Observer(
          builder: (_) => Row(
            children: [
              SizedBox(
                height: constraints.maxHeight,
                width: (constraints.maxWidth) * (1 / 3),
                child: GestureDetector(
                  child: Tabs(
                    text: "Filmes",
                    iconName: Icons.movie_filter_rounded,
                    color: (store.filmesColorTab == true)
                        ? Colors.blueGrey.shade800
                        : Color(0xFF2B2B2B),
                  ),
                  onTap: () {
                    store.filmesForTrue();
                  },
                ),
              ),
              SizedBox(
                height: constraints.maxHeight,
                width: (constraints.maxWidth) * (1 / 3),
                child: GestureDetector(
                  child: Tabs(
                    text: "Personagens",
                    iconName: Icons.recent_actors_rounded,
                    color: (store.personagensColorTab == true)
                        ? Colors.blueGrey.shade800
                        : Color(0xFF2B2B2B),
                  ),
                  onTap: () {
                    store.personagensForTrue();
                  },
                ),
              ),
              SizedBox(
                height: constraints.maxHeight,
                width: (constraints.maxWidth) * (1 / 3),
                child: GestureDetector(
                  child: Tabs(
                    text: "Favoritos",
                    iconName: Icons.star_rounded,
                    color: (store.favoritosColorTab == true)
                        ? Colors.blueGrey.shade800
                        : Color(0xFF2B2B2B),
                  ),
                  onTap: () {
                    store.favoritosForTrue();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
