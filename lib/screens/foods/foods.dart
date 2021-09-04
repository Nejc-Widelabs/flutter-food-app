import 'package:flutter/material.dart';

//Widgets
import 'foods_navigator.dart';
import 'foods_top_text.dart';
import 'foods_search_bar.dart';
import 'ingredients.dart';
import 'foods_list.dart';

class Foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Pressed'),
        child: Icon(Icons.align_horizontal_left_rounded),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.face,
                size: 60,
              ),
            ),
            FoodsTopText(),
            FoodsSearchBar(),
            IngredientsList(),
            FoodsList(),
          ],
        ),
      ),
      bottomNavigationBar: FoodsNavigator(),
    );
  }
}
