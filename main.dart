import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curbside App',
      home: Scaffold(
        appBar: AppBar(
            title: Text('"Results for Burger King"'),
            centerTitle: true,
            backgroundColor: Colors.green),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(75.0),
              color: Colors.blueAccent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          print("You visited Burger King Leesburg's Page");
                        },
                        child: Text("Burger King Leesburg"),
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/unnamed.jpg',
                      height: 100.0,
                      width: 50.0,
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(75.0),
              color: Colors.blueAccent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          print("You visited Burger King Ashburn's Page");
                        },
                        child: Text("Burger King Ashburn"),
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/unnamed.jpg',
                      height: 100.0,
                      width: 50.0,
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.all(75.0),
              color: Colors.blueAccent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          print("You visited Burger Centreville's Page");
                        },
                        child: Text("Burger King Centreville"),
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/unnamed.jpg',
                      height: 100.0,
                      width: 50.0,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
