import 'package:flutter/material.dart';
import 'package:weather_app/Activity/home.dart';
import 'package:weather_app/Activity/loading.dart';
import 'package:weather_app/Activity/location.dart';

void main() {
  runApp(MaterialApp(
    //  home: Home(), // no use as route is set
    routes: {
      "/": (context) => Loading(), // default route
      "/home": (context) => Home(),
    },
  ));
}
