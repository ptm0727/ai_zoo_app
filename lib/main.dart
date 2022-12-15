import 'package:flutter/material.dart';
import 'package:ai/catdog/catDogClassifier.dart';
import 'package:ai/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Classification',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id:(context) => SplashPage(),
        CatDogClassifier.id:(context) => CatDogClassifier(),
      },
    );
  }
}
