import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function functionality;

  RoundIconButton({@required this.icon, @required this.functionality});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: functionality,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: kIncrementalButtonColor,
      shape: CircleBorder(),
    );
  }
}
