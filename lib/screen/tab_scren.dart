import "package:flutter/material.dart";
import 'package:mealsapp/screen/categories_screen.dart';
import 'package:mealsapp/screen/favorite_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(title: Text("Meals"),bottom: TabBar(tabs: <Widget>[
          Tab(icon:Icon(Icons.category),text:"Categories"),
          Tab(icon : Icon(Icons.favorite),text: "Favorites",),
        ]),),
        body: TabBarView(children: <Widget> [
          CatergoriesScreen(),
          FavoriteScreen(),
        ],),
      ));
  }
}
