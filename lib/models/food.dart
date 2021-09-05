//Models
import 'ingredient.dart';

class Food {
  static int _id = 0;
  final int id = _id++;
  final String name;
  final double rating;
  final double distance;
  final double price;
  final String imagePath;
  final List<Ingredient> ingredients;
  final String description;

  Food(this.name, this.rating, this.distance, this.price, this.imagePath,
      this.ingredients, this.description);

  static List<Food> all() {
    return foods;
  }

  static Food getByID(int id) {
    return foods.singleWhere((element) => element.id == id);
  }
}

List<Food> foods = [
  Food(
      'Extra Beef Burger',
      4.8,
      5.3,
      9.90,
      'extra_beef_burger.jfif',
      [
        Ingredient('Cheese', '🧀'),
        Ingredient('Onion', '🧅'),
        Ingredient('Meat', '🥩'),
        Ingredient('Salad', '🥗'),
        Ingredient('Bread', '🍞'),
      ],
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  Food(
      'Smoked Beef Burger',
      4.5,
      4,
      9.90,
      'smoked_beef_burger.jfif',
      [
        Ingredient('Cheese', '🧀'),
        Ingredient('Onion', '🧅'),
        Ingredient('Meat', '🥩'),
        Ingredient('Salad', '🍃'),
        Ingredient('Bread', '🍞'),
      ],
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  Food(
      'Extra Beef Burger',
      4.8,
      5.3,
      9.90,
      'extra_beef_burger.jfif',
      [
        Ingredient('Cheese', '🧀'),
        Ingredient('Onion', '🧅'),
        Ingredient('Meat', '🥩'),
        Ingredient('Salad', '🍃'),
        Ingredient('Bread', '🍞'),
      ],
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  Food(
      'Extra Beef Burger',
      4.8,
      5.3,
      9.90,
      'extra_beef_burger.jfif',
      [
        Ingredient('Cheese', '🧀'),
        Ingredient('Onion', '🧅'),
        Ingredient('Meat', '🥩'),
        Ingredient('Salad', '🍃'),
        Ingredient('Bread', '🍞'),
      ],
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  Food(
      'Extra Beef Burger',
      4.8,
      5.3,
      9.90,
      'extra_beef_burger.jfif',
      [
        Ingredient('Cheese', '🧀'),
        Ingredient('Onion', '🧅'),
        Ingredient('Meat', '🥩'),
        Ingredient('Salad', '🍃'),
        Ingredient('Bread', '🍞'),
      ],
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
];
