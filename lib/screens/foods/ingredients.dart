import 'package:flutter/material.dart';

//Widgets
import 'ingredients_card.dart';

class IngredientsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            IngredientsCard('🍖 Beef'),
            IngredientsCard('🧀 Cheese'),
            IngredientsCard('🍤 Shrimp'),
            IngredientsCard('🥓 Bacon'),
            IngredientsCard('🧅 Onion'),
          ],
        ),
      ),
    );
  }
}
