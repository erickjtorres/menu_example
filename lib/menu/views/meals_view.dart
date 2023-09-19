import 'package:flutter/material.dart';
import 'package:menu_example/menu/components/grid_meal_view.dart';
import 'package:menu_example/menu/components/meal_information.dart';
import 'package:menu_example/models/meal.dart';

class MealsView extends StatelessWidget {
  const MealsView({
    super.key,
    required this.listOfMeals,
    required this.typeOfMeals,
    this.description,
  });

  final List<Meal> listOfMeals;
  final String typeOfMeals;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(typeOfMeals),
        actions: description != null
            ? [
                MealInformation(
                  description: description!,
                ),
              ]
            : null,
      ),
      body: GridMealView(
        listOfMeals: listOfMeals,
      ),
    );
  }
}
