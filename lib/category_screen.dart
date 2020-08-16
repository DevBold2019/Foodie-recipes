
import 'package:flutter/material.dart';
import 'package:full_belly/category_item.dart';
import 'package:full_belly/dummy_data.dart';

class category_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Foodie"),
          actions: <Widget>[Icon(Icons.more_vert)]),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        children: DUMMY_CATEGORIES
            .map((data) => CategoryItem(data.title, data.color))
            .toList(),
      ),
    );
  }
}
