import 'package:flutter/material.dart';
import 'BMICalculatorpage.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF080C22),
        scaffoldBackgroundColor: Color(0xFF080C22),
      ),
      home: BMICalculatorpage(),
    );
  }
}

