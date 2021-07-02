import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;
  String username = "kikiu";

// Async - Function start but return same delayed
//Future.delayed - Function start after some delayed

  void getData() async {
    //Get data
    Response response = await get(Uri.https('api.openweathermap.org',
        'data/2.5/weather?q=Bhubaneswar&appid=cf82a9601f77374adfcf7bfa96d3a0b5'));
    Map data = jsonDecode(response.body);
    List weatherData = data['weather'];
    Map weatherMainData = weatherData[0];
    print(weatherData);
    print(weatherMainData['main']);
    //double temp = tempData['temp'];
  }

  void initStatee() {
    super.initState();
    getData();
    print("this is init state");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("setstate called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Text("Home Activity"),
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () => setState(() {
              counter += 1;
            }),
          ),
          Text("$counter"),
        ],
      ),
    );
  }
}
