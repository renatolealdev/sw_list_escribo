// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sw_list_escribo/components/tabs.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            Container(
              height: constraints.maxHeight,
              width: (constraints.maxWidth) * (1 / 3),
              child: new Tabs(
                text: "Filmes",
                iconName: Icons.movie_filter_rounded,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight,
              width: (constraints.maxWidth) * (1 / 3),
              child: new Tabs(
                text: "Personagens",
                iconName: Icons.recent_actors_rounded,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight,
              width: (constraints.maxWidth) * (1 / 3),
              child: new Tabs(
                text: "Favoritos",
                iconName: Icons.star_rounded,
              ),
            ),
          ],
        );
      },
    );
  }
}
