import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.functionality, this.text});

  final Function functionality;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functionality,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
          text,
          style: kLargeButtonTextStyle,
        )),
      ),
    );
  }
}
