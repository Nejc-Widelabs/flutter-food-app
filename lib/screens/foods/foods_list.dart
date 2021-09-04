import 'package:flutter/material.dart';

//Widgets
import 'foods_card.dart';

//Models
import '../../models/food.dart';

class FoodsList extends StatelessWidget {
  final List<Food> foods = Food.all();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 10),
      height: 222,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Most popular',
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: foods.map((food) => FoodsCard(food.id)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
                  FoodsCard('Extra Beef Burger', 4.8, 5.3, 9.90,
                      'extra_beef_burger.jfif'),
                  FoodsCard('Smoked Beef Burger', 4.5, 4, 9.90,
                      'smoked_beef_burger.jfif'),
                  FoodsCard('Extra Beef Burger', 4.8, 5.3, 9.90,
                      'extra_beef_burger.jfif'),
                  FoodsCard('Extra Beef Burger', 4.8, 5.3, 9.90,
                      'extra_beef_burger.jfif'),
*/
