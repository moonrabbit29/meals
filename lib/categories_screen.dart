import './category_meals_screen.dart';
import 'package:flutter/material.dart';
import './dummy.dart';

class CatergoriesScreen extends StatelessWidget {
  const CatergoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: const Text("DelMeal"),),
          body: GridView(
        padding: const EdgeInsets.all(8),
        children: DUMMY_CATEGORIES.map((catData)=>CategoryItem(catData.id,catData.title, catData.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, childAspectRatio: 3 / 2,crossAxisSpacing: 20, mainAxisSpacing: 20 ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(this.id,this.title, this.color);

  void selectCategory(BuildContext context)
  {
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return CategoryMealsScreen(title: title,id:id,color: color,);
    } ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){selectCategory(context);},
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.headline6,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7),
            color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
