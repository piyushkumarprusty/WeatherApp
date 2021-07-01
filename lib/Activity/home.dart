import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = "Piyush";

  void getData() {
    //process
    Future.delayed(Duration(seconds: 5), () {
      print("$username ");
    });
  }

  void showData() {
    print("$username");
  }

  void initStatee() {
    super.initState();
    getData();
    showData();
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
