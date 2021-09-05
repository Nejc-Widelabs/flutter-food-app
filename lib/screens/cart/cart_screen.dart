import 'package:flutter/material.dart';

//Widgets
import 'order.dart';
import 'bottom_navigator_bar.dart';

//Models
import '../../models/cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Cart', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: null,
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: Cart.orders.map((order) => Order(order)).toList(),
      ),
      bottomNavigationBar: BottomNavigatorBar(),
    );
  }
}
