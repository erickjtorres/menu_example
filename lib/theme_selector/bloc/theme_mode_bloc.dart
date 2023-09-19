import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_mode_event.dart';

class ThemeModeBloc extends Bloc<ThemeModeEvent, ThemeMode> {

  ThemeModeBloc() : super(ThemeMode.light) {
    on<ThemeModeChanged>((event, emit) => emit(event.themeMode ?? state));
  }
}
