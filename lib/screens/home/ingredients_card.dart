import 'package:flutter/material.dart';

class IngredientsCard extends StatelessWidget {
  final String _cardText;
  IngredientsCard(this._cardText);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(_cardText),
      ),
    );
  }
}
