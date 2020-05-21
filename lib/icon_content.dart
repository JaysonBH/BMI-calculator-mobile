import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String text;

  IconContent({@required this.iconData, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text,
            //'MALE',
            style: kLabelTextStyle,
          )
        ],
      ),
    );
  }
}
