import 'package:flutter/material.dart';

class BoxForBody extends StatelessWidget {
  BoxForBody({@required this.boxcolor, this.customchild});

  final Color boxcolor;
  final Widget customchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: customchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: boxcolor,
      ),
    );
  }
}