import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  const Meal({
    required this.name,
    this.description,
    this.subcategory,
    required this.price,
  });
  final String name;
  final String? description;
  final String? subcategory;
  final double price;

  @override
  List<Object?> get props => [name, subcategory, description, price];

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        subcategory: json["subcategory"],
      );
}
