import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Center(
        child: Icon(
          Icons.account_circle_rounded,
          color: Color(0xFF000000),
        ),
      ),
    );
  }
}
