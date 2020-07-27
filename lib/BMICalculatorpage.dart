import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const double bottomcontainerheight = 80;
const bottomcontainercolor = Color(0xFFEB1555);
const activeboxcolor = Color(0xFF1D1E33);

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
                Expanded(child: BoxForBody(boxcolor: activeboxcolor,)),
                Expanded(child: BoxForBody(boxcolor: activeboxcolor,)),
              ],
            ),
          ),
          Expanded(child: BoxForBody(boxcolor: activeboxcolor,)),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(child: BoxForBody(boxcolor: activeboxcolor,)),
              Expanded(child: BoxForBody(boxcolor: activeboxcolor,)),
            ],),
          ),
          Container(
            color: bottomcontainercolor,
            height: bottomcontainerheight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 15),
          )
        ],
      )
      );
  }
}


class BoxForBody extends StatelessWidget {

  BoxForBody({@required this.boxcolor});
  final Color boxcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        color: boxcolor,
    ),
    );
  }
}

