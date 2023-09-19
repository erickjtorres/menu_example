import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menu_example/menu/bloc/menu_bloc.dart';
import 'package:menu_example/menu/components/menu_list_tile.dart';
import 'package:menu_example/theme_selector/theme_selector.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ThemeSelector(),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<MenuBloc, MenuState>(
          builder: (context, state) {
            if (state is MenuLoaded) {
              return ListView.builder(
                itemCount: state.listOfMenuCategories.length,
                itemBuilder: (context, index) => MenuListTile(
                  title: state.listOfMenuCategories[index].type,
                  description: state.listOfMenuCategories[index].description,
                  subcategories:
                      state.listOfMenuCategories[index].subcategories,
                  listOfMeals: state.listOfMenuCategories[index].listOfmeals,
                ),
              );
            } else if (state is MenuError) {
              return const Center(
                child: Text("There seems to be a problem!"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
