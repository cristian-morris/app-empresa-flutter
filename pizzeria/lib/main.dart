import 'package:flutter/material.dart';
import 'package:pizzeria/pages/casa.dart';
import 'package:pizzeria/screens/home.dart';
import 'package:pizzeria/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        HomePage.id: (context) => HomePage(),
        MyCasa.id: (context) => MyCasa()
      },
    );
  }
}
