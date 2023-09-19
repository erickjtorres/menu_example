// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_example/theme_selector/theme_selector.dart';

/// A drop down menu to select a new [ThemeMode]
///
/// Requires a [ThemeModeBloc] to be provided in the widget tree
/// (usually above [MaterialApp])
class ThemeSelector extends StatelessWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ThemeModeBloc>().state;
    return Switch(
      // This bool value toggles the switch.
      value: themeMode == ThemeMode.light,
      thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return const Icon(Icons.light_mode);
          }
          return const Icon(Icons.dark_mode);
        },
      ),
      activeColor: Colors.yellow,
      onChanged: (bool value) {
        ThemeMode themeMode = value ? ThemeMode.light : ThemeMode.dark;
        context.read<ThemeModeBloc>().add(ThemeModeChanged(themeMode));
      },
    );
  }
}
