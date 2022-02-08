// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sw_list_escribo/page/home_page.dart';
import 'package:sw_list_escribo/store/sw_list.store.dart';

main() => runApp(SWList());

class SWList extends StatelessWidget {
  const SWList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        Provider<SWListStore>(
          create: (_) => SWListStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "SW List for Escribo",
        home: HomePage(),
      ),
    );
  }
}
