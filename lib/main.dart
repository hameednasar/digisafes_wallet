import 'package:flutter/material.dart';
import 'package:flutter_log/splash_screen.dart';

void main() {
  runApp(DigiSafesApp());
}

class DigiSafesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIGISAFES',
      theme: ThemeData.dark(),
      home: SplashScreen(), // Start with SplashScreen
    );
  }
}
