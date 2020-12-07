import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/location.dart';
import 'package:world_time/pages/loading.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => LoadingScreen(),
    '/home': (context) => Home(),
    '/location': (context) => Location(),},
));


