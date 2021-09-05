import 'package:flutter/material.dart';

//Screens
import './screens/food_detail/food_detail.dart';
import './screens/home/home.dart';
import 'screens/sign_in/sign_in.dart';
import 'screens/cart/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SignIn(),
        '/foods': (context) => Foods(),
        '/food_detail': (context) => FoodDetail(),
        '/cart': (context) => CartScreen(),
      },
    );
  }
}
