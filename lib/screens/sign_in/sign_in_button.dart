import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _handleOnPressed() {
      Navigator.pushNamed(context, '/foods');
    }

    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: _handleOnPressed,
        child: Text('Sign In'),
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.orange,
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
