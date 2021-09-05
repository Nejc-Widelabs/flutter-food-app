import 'package:flutter/material.dart';

//Widgets
import 'ingredients_card.dart';

class IngredientsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        height: 50,
        child: Row(
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
