import 'dart:math';

class BMIbrain {
  final int height;
  final int weight;

  double _bmi;

  BMIbrain({this.height , this.weight});

  String bmi(){
      _bmi = weight/pow(height/100 , 2);
      return _bmi.toStringAsFixed(1);
    }

   String bmiresult(){
    if(_bmi<= 18 )
      {
        return 'UNDERWEIGHT';
      }
    else if(_bmi >18 && _bmi<=24)
      {
        return 'HEALTY';
      }
    else if(_bmi > 24 && _bmi <=29)
      {
        return 'OVERWEIGHT';
      }
    else if(_bmi > 29 && _bmi <=39)
      {
        return 'OBESE';
      }
    else if(_bmi > 39 && _bmi <=42)
      {
        return 'EXTREMELY OBESE';
      }
    else if(_bmi > 42)
      {
        return 'SUPER EXTREMEEEEEELY OBESE';
      }
     else{
       return 'PLEASE ENTER A VALID HEIGHT & WEIGHT';
    }
   }
  String bmiinference(){
    if(_bmi<= 18 )
    {
      return 'GO EAT SOMETHING! 🍗 🍏';
    }
    else if(_bmi >18 && _bmi<=24)
    {
      return 'YOU ARE FIT ! MAINTAIN YOUR HEALTH 😇';
    }
    else if(_bmi > 24 && _bmi <=29)
    {
      return 'HEY! YOU DO SOME EXERCISE 🚴';
    }
    else if(_bmi > 29 && _bmi <=39)
    {
      return 'STOP EATING FATTY FOOD & JUNK FOOD OR ELSE YOU WILL DIE EARLY ! EXERCISE NOW 🏋️️';
    }
    else if(_bmi > 39 && _bmi <=42)
    {
      return 'YOU ARE REALLY FAT ! PLAY YOUR FAV MUSIC 🎶 & DANCE 🕺🏽 BECAUSE YOU ARE TOO LAZY TO EXERCISE ';
    }
    else if(_bmi > 42)
    {
      return 'WHY ARE YOU USING MOBILE PHONE ! ARE YOU ABLE TO WALK PROPERLY EVEN ? ....SEEK SOME MEDICAL HELP 👩‍⚕ 👨‍⚕ ';
    }
    else{
      return 'PLEASE ENTER A VALID HEIGHT & WEIGHT';
    }
  }
}