import 'package:flutter/material.dart';

class BoxContentIcon extends StatelessWidget {
  final IconData iconData;
  final String boxString;

  BoxContentIcon({this.iconData, this.boxString});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          boxString,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
