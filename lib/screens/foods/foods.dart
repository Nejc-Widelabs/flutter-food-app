import 'package:flutter/material.dart';

//Widgets
import 'foods_navigator.dart';

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
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(vertical: 30),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                  children: [
                    TextSpan(
                        text: 'Find and order\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        )),
                    TextSpan(
                      text: 'burger for you  🍔',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              child: TextField(
                style: TextStyle(fontSize: 20, height: 0.7),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('🍖 Beef'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 232,
            )
          ],
        ),
      ),
      bottomNavigationBar: FoodsNavigator(),
    );
  }
}

/*
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('🍖 Beef'),
                  ),
                ),
*/