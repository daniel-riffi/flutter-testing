import 'package:flutter/material.dart';
import 'package:testing/login.dart';
import 'home.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Login(),
    '/home': (context) => MyHomePage()
  },
));