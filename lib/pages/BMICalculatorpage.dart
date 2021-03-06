import 'package:bmicalculatorapp/class/bmicalculatorclass.dart';
import 'package:bmicalculatorapp/pages/BMI_Result_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/Boxdesign.dart';
import '../widgets/Icon_gender.dart';
import '../constants.dart';
import '../widgets/custombuttonplusmminus.dart';
import '../widgets/bottomcontainer.dart';

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
          title: Center(child: Text("BMI Calculator")),
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
                    style: TextStyle(color: ktextcolor,fontSize: 18),
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
                        customchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("WEIGHT", style: TextStyle(color: ktextcolor , fontSize: 18),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(weightvaue.toString(), style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),),
                                Text("kg", style: TextStyle(color: ktextcolor)),
                              ],
                            ),
                            //Text(weightvaue.toString() , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Custombuttomplusminus(custombuttonicon: FontAwesomeIcons.plus,
                                  custombuttonplusminusonpressed: (){
                                    setState(() {
                                      weightvaue = weightvaue + 1;
                                    });
                                  },
                                ),
                                Custombuttomplusminus(
                                  custombuttonicon: FontAwesomeIcons.minus,
                                  custombuttonplusminusonpressed: (){
                                    setState(() {
                                      weightvaue = weightvaue - 1;
                                    });
                                  },

                                ),
                              ],
                            )
                          ],
                        )
                  )),
                  Expanded(
                      child: BoxForBody(
                    boxcolor: kactiveboxcolor,
                          customchild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("AGE", style: TextStyle(color: ktextcolor , fontSize: 18),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                mainAxisAlignment: MainAxisAlignment.center,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(agevalue.toString(), style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),),
                                  Text("Yr", style: TextStyle(color: ktextcolor)),
                                ],
                              ),
                              //Text(agevalue.toString() , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Custombuttomplusminus(custombuttonicon: FontAwesomeIcons.plus,
                                    custombuttonplusminusonpressed: (){
                                      setState(() {
                                        agevalue = agevalue + 1;
                                      });
                                    },
                                  ),
                                  Custombuttomplusminus(
                                    custombuttonicon: FontAwesomeIcons.minus,
                                    custombuttonplusminusonpressed: (){
                                      setState(() {
                                        agevalue = agevalue - 1;
                                      });
                                    },

                                  ),
                                ],
                              )
                            ],
                          )
                  )),
                ],
              ),
            ),
            Bottombutton(title: "CALCULATE",redirect: (){
              BMIbrain calculated = BMIbrain(height: sliderheightvalue, weight: weightvaue);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Bmiresultpage(bmi: calculated.bmi(), bmiresult: calculated.bmiresult(),bmiinference: calculated.bmiinference(),) ));
            },),
          ],
        ));
  }
}

