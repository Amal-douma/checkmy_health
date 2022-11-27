import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import'package:checkmy_health/calcul.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 30,
      navigateAfterSeconds: new Calcul(),
      title: new Text('CHECK MY HEALTH'),
      image: new Image.asset('image/logo.png'),
      backgroundColor: Colors.white,
      loadingText: Text('loading'),
      photoSize: 100,
      loaderColor: Colors.blue,
    );
  }
}

