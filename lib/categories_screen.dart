import 'package:flutter/material.dart';

class CatergoriesScreen extends StatelessWidget {
  const CatergoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(children: <Widget>[

    ],
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2
    ),
    );
  }
}