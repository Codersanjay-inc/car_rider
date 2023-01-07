import 'package:car_rider/view/start/on_boarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rider',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
