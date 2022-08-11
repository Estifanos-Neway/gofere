import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gofere_travels/pages/homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
      Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  HomePage())),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[400],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Gofere Travels",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Nunito',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}