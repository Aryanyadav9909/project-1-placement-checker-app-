import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const PlacementApp());
}

class PlacementApp extends StatelessWidget {
  const PlacementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Placement Prep App",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SplashScreen(),
    );
  }
}
