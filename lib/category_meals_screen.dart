import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryMealsScreen({this.title, this.id, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text('The Recipes For The Category'),
        ));
  }
}
