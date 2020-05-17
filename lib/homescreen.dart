import 'package:covidtracker/after_splash.dart';
import 'package:covidtracker/networking.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'after_splash.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCountryData();
  }

  void getCountryData() async {
    NetworkHelper networkHelper = NetworkHelper(
        'https://disease.sh/v2/countries/india?yesterday=false&strict=true');
    NetworkHelper networkHelperglobal =
        NetworkHelper('https://disease.sh/v2/all');
    var countryData = await networkHelper.getData();
    var globalData = await networkHelperglobal.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AfterSplash(
        country: countryData,
        global: globalData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      title: Text(
        'Corona Tracker',
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Comfortaa',
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
