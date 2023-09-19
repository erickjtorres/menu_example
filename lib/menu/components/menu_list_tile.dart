import 'package:flutter/material.dart';
import 'package:menu_example/menu/views/meals_subcategories_view.dart';
import 'package:menu_example/menu/views/meals_view.dart';
import 'package:menu_example/models/meal.dart';
import 'package:menu_example/models/subcategory.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    super.key,
    required this.title,
    required this.listOfMeals,
    this.description,
    required this.subcategories,
  });

  final String title;
  final String? description;
  final List<Subcategory> subcategories;
  final List<Meal> listOfMeals;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.food_bank),
        title: Text(title),
        trailing: const Icon(Icons.navigate_next),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => subcategories.isNotEmpty
                  ? MealsSubcategoriesView(
                      typeOfMeals: title,
                      listOfMeals: listOfMeals,
                      description: description,
                      categories: subcategories,
                    )
                  : MealsView(
                      typeOfMeals: title,
                      listOfMeals: listOfMeals,
                      description: description,
                    ),
            ),
          );
        },
      ),
    );
  }
}
