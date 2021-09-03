import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15,
              ),
            ),
            TextSpan(
              text: 'Sign up',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
