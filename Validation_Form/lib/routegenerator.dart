import 'package:flutter/material.dart';
import 'package:flutternav/firstscreen.dart';
import'package:flutternav/secondscreen.dart';

class RouteGenerator {
static Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case"/first":
      return MaterialPageRoute(builder: (_) => MyHomePage());
    case"/second":
      return MaterialPageRoute(builder: (_) => secondscreen());
  }
}

}
