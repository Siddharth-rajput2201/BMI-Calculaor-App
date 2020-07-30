import 'package:flutter/material.dart';
import '../constants.dart';

class Bottombutton extends StatelessWidget {

  final String title;
  final Function redirect;

  Bottombutton({@required this.title,@required this.redirect});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        redirect();
      },
      child: Container(
        color: kbottomcontainercolor,
        height: kbottomcontainerheight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        child: Center(
          child: Text(title,style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.w700
          ),
          ),
        ),
      ),
    );
  }
}

