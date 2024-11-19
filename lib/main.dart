import 'package:flutter/material.dart';
import 'package:uis/pages/second_splash.dart';
import 'package:uis/pages/first_splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstSplash(),
    );
  }
}
// MaterialApp