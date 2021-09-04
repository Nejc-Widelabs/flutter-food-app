import 'package:flutter/material.dart';

//Models
import '../../models/ingredient.dart';

class IngredientCard extends StatelessWidget {
  final Ingredient _ingredient;

  IngredientCard(this._ingredient);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _ingredient.emoji,
              style: TextStyle(fontSize: 45),
            ),
            Text(
              _ingredient.name,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
