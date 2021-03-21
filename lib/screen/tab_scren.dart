import "package:flutter/material.dart";
import 'package:mealsapp/screen/categories_screen.dart';
import 'package:mealsapp/screen/favorite_screen.dart';
import 'package:mealsapp/widget/main_drawer.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  List<Map<String,Object>> _pages = [
    {'page' : CatergoriesScreen(),
      'title' : 'Categories',
    },
    {
      'page' : FavoriteScreen(),
      'title' : 'Favorite'
    }
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState((){
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title'])),
        drawer: MainDrawer(),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items : [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
          title:Text("Categories")), 
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
          title:Text("Favorite")),
        ]
        ),
      );
  }
}
