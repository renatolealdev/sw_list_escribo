// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sw_list_escribo/components/avatar.dart';
import 'package:sw_list_escribo/components/site_oficial.dart';

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 12, 10, 12),
              height: constraints.maxHeight,
              width: constraints.maxWidth * 0.4,
              child: SiteOficial(),
            ),
            Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth * 0.2,
              padding: EdgeInsets.all(1.0),
              child: Avatar(),
            ),
          ],
        );
      },
    );
  }
}
