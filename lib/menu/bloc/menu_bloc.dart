import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:menu_example/models/menu_category.dart';
part 'menu_state.dart';

class MenuBloc extends Cubit<MenuState> {
  MenuBloc() : super(MenuInitial());

  getFood() async {
    emit(MenuLoading());
    try {
      String jsonString = await rootBundle.loadString('assets/data.json');
      dynamic decodedJson = jsonDecode(jsonString);
      List<MenuCategory> listOfMenuCategories = decodedJson['menu_items']
          .map<MenuCategory>((item) => MenuCategory.fromJson(item))
          .toList();
      emit(MenuLoaded(listOfMenuCategories: listOfMenuCategories));
    } catch (_) {
      emit(MenuError());
    }
  }
}
