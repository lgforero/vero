import 'package:flutter/material.dart';
import 'package:vero/UI/splash.dart';
import 'UI/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veronica\'s Store',
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.deepPurpleAccent,
      ),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        'home': (context) => Home(),
      },
    );
  }
}
