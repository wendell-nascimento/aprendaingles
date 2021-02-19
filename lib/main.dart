import 'package:aprendaingles_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.brown[500],
      scaffoldBackgroundColor: Colors.amber[100],
    ),
    home: Home(),
  ));
}
