import 'package:flutter/material.dart';

class Custombuttomplusminus extends StatelessWidget {

  final IconData custombuttonicon ;
  final Function custombuttonplusminusonpressed;

  Custombuttomplusminus({@required this.custombuttonicon ,@required this.custombuttonplusminusonpressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:
      custombuttonplusminusonpressed,
      child: Icon(custombuttonicon),
      constraints: BoxConstraints.tightFor(width: 56 , height: 56),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
