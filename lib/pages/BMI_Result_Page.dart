import 'package:bmicalculatorapp/widgets/Boxdesign.dart';
import 'package:bmicalculatorapp/widgets/bottomcontainer.dart';
import 'package:bmicalculatorapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Bmiresultpage extends StatelessWidget {
  final String bmi;
  final String bmiresult;
  final String bmiinference;

  Bmiresultpage({@required this.bmi , @required this.bmiresult ,@required this.bmiinference});
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
                Text(bmiresult,style: kresultpagetitle, textAlign: TextAlign.center,),
                Text(bmi , style: kBMIresultstyle,),
                Text(bmiinference , textAlign: TextAlign.center, style: TextStyle(fontSize:20),),
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
