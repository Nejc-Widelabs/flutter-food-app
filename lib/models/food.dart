class Food {
  static int _id = 0;
  final int id = _id++;
  final String name;
  final double rating;
  final double distance;
  final double price;
  final String imagePath;

  Food(this.name, this.rating, this.distance, this.price, this.imagePath);

  static List<Food> all() {
    return foods;
  }

  static Food getByID(int id) {
    return foods.singleWhere((element) => element.id == id);
  }
}

List<Food> foods = [
  Food('Extra Beef Burger', 4.8, 5.3, 9.90, 'extra_beef_burger.jfif'),
  Food('Smoked Beef Burger', 4.5, 4, 9.90, 'smoked_beef_burger.jfif'),
  Food('Extra Beef Burger', 4.8, 5.3, 9.90, 'extra_beef_burger.jfif'),
  Food('Extra Beef Burger', 4.8, 5.3, 9.90, 'extra_beef_burger.jfif'),
  Food('Extra Beef Burger', 4.8, 5.3, 9.90, 'extra_beef_burger.jfif'),
  Food('Extra Beef Burger', 4.8, 5.3, 9.90, 'extra_beef_burger.jfif'),
  Food('Extra Beef Burger', 4.8, 5.3, 9.90, 'extra_beef_burger.jfif'),
];
