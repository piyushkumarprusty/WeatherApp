import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = "kikiu";

// Async - Function start but return same delayed
//Future.delayed - Function start after some delayed

  void getData() async {
    //Get data
    Response response = await get(Uri.https('api.openweathermap.org', 'data/2.5/weather?q=Indore&appid=cf82a9601f77374adfcf7bfa96d3a0b5')),
   // print(response.body);
  }

  void initStatee() {
    super.initState();
    getData();
    print("this is init state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Text("Home Activity"),

      appBar: AppBar(
        title: Text("Home Activity"),
      ),
    );
  }
}
