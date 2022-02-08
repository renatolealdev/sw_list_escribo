import 'package:flutter/material.dart';

class FavoritosSubPage extends StatelessWidget {
  const FavoritosSubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[800],
        child: Center(
          child: Text("Favoritos"),
        ),
      ),
    );
  }
}
