import 'package:flutter/material.dart';

//Widgets
import 'foods_card.dart';

//Models
import '../../models/food.dart';

class FoodsList extends StatelessWidget {
  final List<Food> foods = Food.all();

  @override
  Widget build(BuildContext context) {
    void _handleOnTap(int id) {
      Navigator.pushNamed(context, '/food_detail', arguments: id);
    }

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
                children: foods
                    .map((food) => GestureDetector(
                          child: FoodsCard(food.id),
                          onTap: () => _handleOnTap(food.id),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
