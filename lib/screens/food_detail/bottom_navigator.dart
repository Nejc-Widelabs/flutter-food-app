import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  final double _price;
  final VoidCallback _handleAddToCart;

  BottomNavigator(this._price, this._handleAddToCart);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$${_price.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 35),
          ),
          ElevatedButton(
            onPressed: _handleAddToCart,
            child: Text('Add to cart'),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              fixedSize: Size.fromWidth(200),
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
