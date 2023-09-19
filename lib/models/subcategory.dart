import 'package:equatable/equatable.dart';

class Subcategory extends Equatable {
  const Subcategory({
    required this.type,
    this.description,
  });
  final String type;
  final String? description;

  @override
  List<Object?> get props => [type, description];

  factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
        type: json["type"],
        description: json['description'],
      );
}
