import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Boxdesign.dart';
import 'Icon_gender.dart';

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
                  Expanded(
                      child: BoxForBody(
                    boxcolor: activeboxcolor,
                    customchild: BoxContentIcon(
                      iconData: FontAwesomeIcons.mars,
                      boxString: "MALE",
                    ),
                  )),
                  Expanded(
                      child: BoxForBody(
                    boxcolor: activeboxcolor,
                    customchild: BoxContentIcon(
                      iconData: FontAwesomeIcons.venus,
                      boxString: "FEMALE",
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: BoxForBody(
              boxcolor: activeboxcolor,
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: BoxForBody(
                    boxcolor: activeboxcolor,
                  )),
                  Expanded(
                      child: BoxForBody(
                    boxcolor: activeboxcolor,
                  )),
                ],
              ),
            ),
            Container(
              color: bottomcontainercolor,
              height: bottomcontainerheight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
            )
          ],
        ));
  }
}


