import 'package:equatable/equatable.dart';
import 'package:menu_example/models/meal.dart';
import 'package:menu_example/models/subcategory.dart';

class MenuCategory extends Equatable {
  const MenuCategory({
    required this.type,
    required this.listOfmeals,
    this.description,
    required this.subcategories,
  });
  final String type;
  final List<Meal> listOfmeals;
  final String? description;
  final List<Subcategory> subcategories;

  @override
  List<Object?> get props => [type, subcategories, listOfmeals];

  factory MenuCategory.fromJson(Map<String, dynamic> json) => MenuCategory(
        type: json["type"],
        listOfmeals: json["listOfMeals"]
            .map<Meal>(
              (meal) => Meal.fromJson(meal),
            )
            .toList(),
        description: json['description'],
        subcategories: json["subcategories"] != null
            ? json["subcategories"]
                .map<Subcategory>(
                  (subcategory) => Subcategory.fromJson(subcategory),
                )
                .toList()
            : [],
      );
}
