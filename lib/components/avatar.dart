import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.contacts_rounded,),
      ),
    );
  }
}
