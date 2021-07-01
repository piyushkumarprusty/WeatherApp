import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username;

// Async - Function start but return same delayed
//Future.delayed - Function start after some delayed

  void getData() async {
    //process
    await Future.delayed(Duration(seconds: 5), () {
      username = "Piyush";
    });
    print("$username");
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
