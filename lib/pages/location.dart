import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[900],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('Choose A Location'),
        centerTitle: true,
      ),
    );
  }
}
