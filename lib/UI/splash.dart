import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Text(
              'WELCOME',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Container(
              child: Image(
                image: AssetImage(
                  'assets/logoV.png',
                ),
                color: Colors.amberAccent,
                width: 250,
              ),
            ),
            RaisedButton(
              color: Colors.white,
              child: Text(
                'GO',
                style: TextStyle(fontSize: 18.0),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
