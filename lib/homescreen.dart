import 'package:covidtracker/after_splash.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'after_splash.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: AfterSplash(),
      title: Text(
        'Corona Tracker',
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lemonada',
            color: Colors.white),
      ),
      imageBackground: AssetImage('assets/images/bg.jpg'),
      image: Image.asset(
        'assets/images/corona.png',
        scale: 1.5,
      ),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 50.0,
      loaderColor: Colors.red,
    );
  }
}
