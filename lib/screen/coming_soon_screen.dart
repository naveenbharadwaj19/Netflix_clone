import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  static const routeName = "coming-soon";
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.filter,
              color: Colors.white,
              size: 80,
            ),
          ),
        ],
      );
  }
}
