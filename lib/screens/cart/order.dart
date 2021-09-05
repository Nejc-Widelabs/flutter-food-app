import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  final Map<String, dynamic> _order;

  Order(this._order);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Checkbox(
              value: true,
              onChanged: null,
              fillColor: MaterialStateProperty.all(Colors.orange),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/images/' + _order['food'].imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 160,
            child: Text(
              '${_order['food'].name}\n\$${_order['food'].price.toStringAsFixed(2)} \n Amount: ${_order['amount']}',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
