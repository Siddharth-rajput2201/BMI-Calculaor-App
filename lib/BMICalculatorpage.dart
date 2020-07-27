import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BMICalculatorpage extends StatefulWidget {
  @override
  _BMICalculatorpageState createState() => _BMICalculatorpageState();
}

class _BMICalculatorpageState extends State<BMICalculatorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: BoxForBody()),
                Expanded(child: BoxForBody()),
              ],
            ),
          ),
          Expanded(child: BoxForBody()),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(child: BoxForBody()),
              Expanded(child: BoxForBody()),
            ],),
          )
        ],
      )
      );
  }
}


class BoxForBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        color: Color(0xFF1D1E33)
    ),
    );
  }
}

