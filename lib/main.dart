import 'package:flutter/material.dart';
import 'package:flutter_glide/screens/home/home.dart';
import 'package:flutter_glide/screens/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
