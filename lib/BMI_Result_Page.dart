import 'package:bmicalculatorapp/Boxdesign.dart';
import 'package:bmicalculatorapp/bottomcontainer.dart';
import 'package:bmicalculatorapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Bmiresultpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex:1,child: Center(child: Text("RESULT",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),))),
          Expanded(
            flex: 8,
              child: BoxForBody(
            boxcolor: kactiveboxcolor,
            customchild: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Normal",style: kresultpagetitle,),
                Text("Normal"),
                Text("Normal"),
              ],
            ),
          )),
          Bottombutton(
              title: "RE-CALCULATE",
              redirect: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
