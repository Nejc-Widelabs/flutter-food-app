import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'BURGER\nQUEEN',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
    );
  }
}
