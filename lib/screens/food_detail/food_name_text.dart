import 'package:flutter/material.dart';

class FoodNameText extends StatelessWidget {
  final String _name;

  FoodNameText(this._name);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Text(
        _name,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
