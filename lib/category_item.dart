import 'package:flutter/material.dart';
import 'package:full_belly/meal_category_screen.dart';
import 'dummy_data.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder:(l){

      return meals_category();

    } ,),);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: () => selectCategory(context),
      splashColor: Theme
          .of(context)
          .accentColor,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
