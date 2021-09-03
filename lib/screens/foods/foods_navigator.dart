import 'package:flutter/material.dart';

class FoodsNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      iconSize: 25,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Shopping',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sticky_note_2_outlined),
          label: 'Notes',
        ),
      ],
    );
  }
}
