import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon, @required this.title, @required this.onPress});

  final IconData icon;
  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RawMaterialButton(
          child: Icon(
            icon,
            size: 24.0,
            color: Color(0xFFF09562),
          ),
          onPressed: onPress,
          constraints: BoxConstraints.tightFor(
            width: 58.0,
            height: 58.0,
          ),
          shape: CircleBorder(),
          fillColor: Color(0xFFFFFFFF),
        ),
        SizedBox(
          height: 12,
        ),
        Text(title),
      ],
    );
  }
}
