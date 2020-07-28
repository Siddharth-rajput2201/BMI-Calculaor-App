import 'package:flutter/material.dart';

class BoxForBody extends StatelessWidget {
  BoxForBody({@required this.boxcolor, this.customchild,this.onpress});

  final Color boxcolor;
  final Widget customchild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: customchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: boxcolor,
        ),
      ),
    );
  }
}