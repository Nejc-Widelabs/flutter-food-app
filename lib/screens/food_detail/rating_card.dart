import 'package:flutter/material.dart';

class RatingCard extends StatelessWidget {
  final double _rating;
  RatingCard(this._rating);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          '⭐ $_rating',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
