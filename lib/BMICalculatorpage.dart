import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Boxdesign.dart';
import 'Icon_gender.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class BMICalculatorpage extends StatefulWidget {
  @override
  _BMICalculatorpageState createState() => _BMICalculatorpageState();
}

class _BMICalculatorpageState extends State<BMICalculatorpage> {
  Gender selectedGender;

  /*Color maleboxcolor = inactiveboxcolor;
  Color femaleboxcolor = inactiveboxcolor;

  void updatecolor(Gender SelectedGender)
  {
    if(SelectedGender == Gender.male)
      {
        if(maleboxcolor == inactiveboxcolor)
          {
            maleboxcolor = activeboxcolor;
            femaleboxcolor = inactiveboxcolor;
          }
        else
          {
            maleboxcolor = inactiveboxcolor;
          }
      }

    if(SelectedGender == Gender.female)
    {
      if(femaleboxcolor == inactiveboxcolor)
      {
        femaleboxcolor = activeboxcolor;
        maleboxcolor = inactiveboxcolor;
      }
      else
      {
        femaleboxcolor = inactiveboxcolor;
      }
    }
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: BoxForBody(
                    onpress: () {
                      setState(() {
                        /*updatecolor(Gender.male);*/
                        selectedGender = Gender.male;
                      });
                    },
                    boxcolor: /*maleboxcolor*/ selectedGender == Gender.male
                        ? kactiveboxcolor
                        : kinactiveboxcolor,
                    customchild: BoxContentIcon(
                      iconData: FontAwesomeIcons.mars,
                      boxString: "MALE",
                    ),
                  )),
                  Expanded(
                      child: BoxForBody(
                    onpress: () {
                      setState(() {
                        /*updatecolor(Gender.female);*/
                        selectedGender = Gender.female;
                      });
                    },
                    boxcolor: /*femaleboxcolor,*/ selectedGender ==
                            Gender.female
                        ? kactiveboxcolor
                        : kinactiveboxcolor,
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
              boxcolor: kactiveboxcolor,
              customchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: ktextcolor),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(sliderheightvalue.toString(), style: knumberstyle),
                      Text("cm", style: TextStyle(color: ktextcolor)),
                    ],
                  ),
                  Slider(
                    activeColor: kbottomcontainercolor,
                    //inactiveColor: kactiveboxcolor,
//                    divisions: 10,
                    value: sliderheightvalue.toDouble(),
                    onChanged: (double newValue){
                      setState(() {
                        sliderheightvalue = newValue.toInt();
                      });
                  },
                    min: 1,
                    max: 250,
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: BoxForBody(
                    boxcolor: kactiveboxcolor,
                  )),
                  Expanded(
                      child: BoxForBody(
                    boxcolor: kactiveboxcolor,
                  )),
                ],
              ),
            ),
            Container(
              color: kbottomcontainercolor,
              height: kbottomcontainerheight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
            )
          ],
        ));
  }
}
