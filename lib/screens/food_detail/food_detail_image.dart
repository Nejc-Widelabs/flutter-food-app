import 'package:flutter/material.dart';

//Models
import '../../models/food.dart';

class FoodDetailImage extends StatelessWidget {
  final String _imagePath;
  FoodDetailImage(this._imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Image.asset(
        'assets/images/' + _imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
