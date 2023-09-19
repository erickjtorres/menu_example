import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  const MealCard(
      {super.key,
      required this.description,
      required this.title,
      required this.price});
  final String title;
  final String? description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/food_placeholder.jpg',
            scale: 0.2,
          ),
          Expanded(
            child: ListTile(
              dense: true,
              title: Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description ?? "",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              // trailing: const Text("12.95"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "\$$price",
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
