import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/icon2.png', height: 100, width: 100,)
            // Icon(
            //   Icons.book,
            //   size: 100.0,
            //   color: Colors.white,
            // ),
            // SizedBox(height: 24.0),
            // Text(
            //   "KATA RINA",
            //   style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white),
            // ),
          ],
        ),
      ),
    );
  }
}
