import 'package:flutter/material.dart';
import 'package:menu_example/menu/components/grid_meal_view.dart';
import 'package:menu_example/menu/components/meal_information.dart';
import 'package:menu_example/models/meal.dart';
import 'package:menu_example/models/subcategory.dart';

class MealsSubcategoriesView extends StatelessWidget {
  const MealsSubcategoriesView({
    super.key,
    required this.listOfMeals,
    required this.typeOfMeals,
    required this.categories,
    this.description,
  });

  final List<Meal> listOfMeals;
  final List<Subcategory> categories;
  final String typeOfMeals;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(typeOfMeals),
          bottom: TabBar(
            tabs: categories
                .map((category) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(category.type),
                    ))
                .toList(),
          ),
          actions: description != null
              ? [
                  MealInformation(description: description!),
                ]
              : null,
        ),
        body: TabBarView(
          children: categories
              .map(
                (category) => GridMealView(
                  listOfMeals: listOfMeals
                      .where((meal) =>
                          meal.subcategory!.toLowerCase() ==
                          category.type.toLowerCase())
                      .toList(),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
