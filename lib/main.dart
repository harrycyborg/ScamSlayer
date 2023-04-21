import 'package:flutter/material.dart';
import 'package:scamslayer/dec.dart';
import 'package:scamslayer/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: DecScreen(),
    );
  }
}
