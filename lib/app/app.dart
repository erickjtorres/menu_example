import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_example/menu/bloc/menu_bloc.dart';
import 'package:menu_example/menu/views/menu_view.dart';
import 'package:menu_example/theme_selector/theme_selector.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeModeBloc(),
        ),
        BlocProvider(
          create: (context) => MenuBloc()..getFood(),
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Demo',
      themeMode: context.watch<ThemeModeBloc>().state,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const MenuView(title: 'Menu'),
    );
  }
}
