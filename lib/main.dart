import 'package:flutter/material.dart';
import 'package:smart_home_app/Screens/CardScreen.dart';
import 'package:smart_home_app/Screens/Guagescreen.dart';
// import 'Screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homescreen(),
      // home: Guagescreen(),
      home: Cardscreen(),
    );
  }
}
