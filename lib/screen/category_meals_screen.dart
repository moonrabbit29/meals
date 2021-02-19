import 'package:flutter/material.dart';
import 'package:mealsapp/widget/meal_item.dart';
import '../dummy.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
            itemBuilder: (ctx, i) {
              return MealItem(
                  title: categoryMeal[i].title,
                  imageUrl: categoryMeal[i].imageUrl,
                  affordability: categoryMeal[i].affordability,
                  complexity: categoryMeal[i].complexity,
                  duration: categoryMeal[i].duration);
            },
            itemCount: categoryMeal.length));
  }
}
