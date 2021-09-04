import 'package:flutter/material.dart';

class FoodsTopText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
          children: [
            TextSpan(
                text: 'Find and order\n',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                )),
            TextSpan(
              text: 'burger for you  🍔',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
