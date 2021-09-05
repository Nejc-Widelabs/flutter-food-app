import 'package:flutter/material.dart';

//Models
import '../../models/food.dart';

class FoodsCard extends StatelessWidget {
  final int _foodID;

  FoodsCard(this._foodID);

  @override
  Widget build(BuildContext context) {
    Food food = Food.getByID(_foodID);
    return Card(
      elevation: 3.0,
      child: Column(
        children: [
          Container(
            height: 120,
            width: 140,
            child: Image.asset(
              'assets/images/' + food.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            food.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            '⭐ ${food.rating.toStringAsFixed(1)} | ${food.distance.toStringAsFixed(1)}km',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '\$${food.price.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
