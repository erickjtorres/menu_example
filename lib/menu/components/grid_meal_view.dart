import 'package:flutter/material.dart';
import 'package:menu_example/menu/components/meal_card.dart';
import 'package:menu_example/models/meal.dart';

class GridMealView extends StatelessWidget {
  const GridMealView({
    super.key,
    required this.listOfMeals,
  });

  final List<Meal> listOfMeals;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listOfMeals.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: .65),
      itemBuilder: (context, index) => MealCard(
        title: listOfMeals[index].name,
        description: listOfMeals[index].description,
        price: listOfMeals[index].price,
      ),
    );
  }
}
