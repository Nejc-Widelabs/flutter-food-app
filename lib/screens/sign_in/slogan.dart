import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 180, 0, 30),
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Good Food\nTasty Food',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.orange,
              ),
            ),
            WidgetSpan(
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
