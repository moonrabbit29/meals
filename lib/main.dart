import 'package:flutter/material.dart';
import 'package:mealsapp/screen/categories_screen.dart';
import 'package:mealsapp/screen/category_meals_screen.dart';
import 'package:mealsapp/screen/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1:TextStyle(fontSize: 24,fontFamily:'RobotoCondensed'),
          bodyText2: TextStyle(color:Color.fromRGBO(20, 51, 51, 1)),
          headline6: TextStyle(fontSize:20,fontFamily:'RobotoCondensed',fontWeight: FontWeight.bold)
        )
      ),
      home : CatergoriesScreen(),
      routes: {
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen()
      },
      onGenerateRoute: (settings){
        return MaterialPageRoute()
      },
    );
  }
}
