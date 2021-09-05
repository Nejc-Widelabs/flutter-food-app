import 'package:flutter/material.dart';

import 'food.dart';

class Cart {
  static List<Map<String, dynamic>> orders = [];

  static _addFood(Food food, int amount) {
    bool newFood = true;

    for (Map<String, dynamic> order in orders) {
      if (order['food'].id == food.id) {
        order['amount'] += amount;
        newFood = false;
        break;
      }
    }

    if (newFood) {
      print('New Food');
      orders.add({'food': food, 'amount': amount});
    }

    for (Map<String, dynamic> order in orders) {
      print('Food: ${order['food'].name} Amount: ${order['amount']}');
    }
  }

  static addToCart(BuildContext context, int amount, Food food) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("No", style: TextStyle(color: Colors.black)),
      onPressed: () => Navigator.of(context).pop(),
    );
    Widget continueButton = TextButton(
      child: Text("Yes", style: TextStyle(color: Colors.black)),
      onPressed: () => {
        print('Added ${food.name} to cart. Amount: $amount'),
        _addFood(food, amount),
        Navigator.of(context).pop(),
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Order"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Text(
          "Would you like to add $amount ${food.name}${amount == 1 ? '' : 's'} to cart?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
