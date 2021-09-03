import 'package:flutter/material.dart';

//Widgets
import 'company_name.dart';
import 'slogan.dart';
import 'sign_in_button.dart';
import 'sign_up_text.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: Column(
          children: [
            CompanyName(),
            Slogan(),
            SignInButton(),
            SignUpText(),
          ],
        ),
      ),
    );
  }
}
