import 'dart:async';
import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => homePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.cyan,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'HEALTH EXPERT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SvgPicture.asset(
                'assests/heart-care-1040229.svg',
                height: 350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
