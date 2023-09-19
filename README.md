# Menu Example Coding Exercise

A quick project demonstrating knowledge of flutter by showcasing how I might tackle a restaurant menu.



https://github.com/erickjtorres/menu_example/assets/25727438/b21ac1c2-3b85-4367-9981-e15d8e81a874


## Getting Started
To install all dependencies, from the root of the project, run:
```sh
flutter packages get
```

## Packages
  - equatable: Equatable for deep object comparison
  - bloc & flutter_bloc: To manage the state and business logic of the application

## Notable features
- Dark/Light mode is available for the user
- The "Menu" data is read from assets/data.json (therefore if you wish you can also make changes to the menu!). The json is structured as follows:

```javascript
   "menu_items": [
        {
            "type": "Required (ie: Appetizers, Desserts, etc)",
            "description": "Optional",
            "subcategories": "Optional (ie: Hot/Cold)",
            "listOfMeals" :
            [
                {
                    "name": "Required",
                    "description": "Optional",
                    "subcategory": "Optional",
                    "price": "Required (must be a number)"
                },
            ]
        },
```

## Future improvements
- Adding more flexible pricing in order to remove redundant "half" priced items
- Adding unique images for each item in order to remove placeholder
- Adding different leading icons for the Menu categories
- Add search functionality
- Add tests
