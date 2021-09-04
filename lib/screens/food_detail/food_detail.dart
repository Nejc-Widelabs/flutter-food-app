import 'package:flutter/material.dart';

//Widgets
import 'food_detail_image.dart';
import 'rating_card.dart';
import 'amount_counter.dart';
import 'food_name_text.dart';
import 'ingredient_card.dart';

//Models
import '../../models/food.dart';

class FoodDetail extends StatefulWidget {
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  int _amountCount = 1;
  bool _atMinLimit = true;
  bool _atMaxLimit = false;

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as int;
    final food = Food.getByID(id);

    void handleCounter(bool raise) {
      setState(() {
        raise ? _amountCount++ : _amountCount--;
        _amountCount == 1 ? _atMinLimit = true : _atMinLimit = false;
        _amountCount == 99 ? _atMaxLimit = true : _atMaxLimit = false;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Details', style: TextStyle(color: Colors.black)),
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
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FoodDetailImage(food.imagePath),
              RatingCard(food.rating),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FoodNameText(food.name),
                  AmountCounter(
                      _amountCount, handleCounter, _atMinLimit, _atMaxLimit),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: food.ingredients
                      .map(
                        (ingredient) => IngredientCard(ingredient),
                      )
                      .toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                child: Text(
                  food.description,
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
