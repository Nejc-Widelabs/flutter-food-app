import 'package:flutter/material.dart';
import 'package:fourth_app/models/cart.dart';

class BottomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sumPrice = 0;

    for (var order in Cart.orders) {
      sumPrice += order['food'].price * order['amount'];
    }

    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$${sumPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 35),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Pay Now'),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              fixedSize: Size.fromWidth(170),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
