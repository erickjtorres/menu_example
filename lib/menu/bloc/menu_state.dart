part of 'menu_bloc.dart';

sealed class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

final class MenuInitial extends MenuState {}

final class MenuLoading extends MenuState {}

final class MenuError extends MenuState {}

final class MenuLoaded extends MenuState {
  const MenuLoaded({required this.listOfMenuCategories});
  final List<MenuCategory> listOfMenuCategories;

  @override
  List<Object> get props => [listOfMenuCategories];
}
