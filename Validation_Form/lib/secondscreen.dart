import 'package:flutter/material.dart';

import 'main.dart';



void main() {
  runApp(MyApp());
}

class secondscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(" SecondScreen"),
    centerTitle: true,
    ),

    body:Center(
    child:
    RaisedButton(
    onPressed: () {},

    child:Text("Back",
    style: TextStyle(color: Colors.lightBlueAccent),
    ),
      ),
    ),
       );
  }
}