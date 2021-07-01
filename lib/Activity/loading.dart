import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //SafeArea(  child:  Text("Loading Activity")),
          SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
              icon: Icon(Icons.add_to_home_screen),
              label: Text("Go To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
