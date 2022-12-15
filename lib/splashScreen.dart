import 'dart:async';

import 'package:ai/catdog/catDogClassifier.dart';
import 'package:ai/main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splashScreen';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  navigateToLandingPage() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, nextPage);
  }

  void nextPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  CatDogClassifier(),
    ));
  }

  @override
  void initState() {
    super.initState();
    navigateToLandingPage();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Image.asset(
          'assets/splash_image.png',
          color: Colors.purpleAccent,
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'ZOO INFORMATION',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.purpleAccent),
        ),
            SizedBox(
              height: 50,
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  CatDogClassifier(),
              ));
            }, icon: Icon(Icons.arrow_circle_right_outlined,size: 35,color: Colors.white,)
            )
          ],
        ),
      ),
    );
  }
}
