import 'package:flutter/material.dart';

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF11328);
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);
const kIncrementalButtonColor = Color(0xFF4C4F5E);
const kIncrementalIconColor = Colors.white;

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberLabelTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultsPageResultStyle = TextStyle(
  color: Colors.green,
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kResultsPageBMIStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kResultsPageSuggestionStyle = TextStyle(
  fontSize: 22,
);

const kSliderTheme = SliderThemeData(
  activeTrackColor: Colors.white,
  inactiveTrackColor: Color(0xFF8D8E98),
  thumbColor: Color(0xFFEB1555),
  thumbShape: RoundSliderThumbShape(
    enabledThumbRadius: 15.0,
  ),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
  overlayColor: Color(0x39EB1555),
);
