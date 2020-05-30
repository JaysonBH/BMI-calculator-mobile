import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.calcBrain});

  final CalculatorBrain calcBrain;
  final String result = 'OVERWEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    calcBrain.getResult().toUpperCase(),
                    style: kResultsPageResultStyle,
                  ),
                  Text(
                    calcBrain.getBMI(),
                    style: kResultsPageBMIStyle,
                  ),
                  Text(
                    calcBrain.getComment(),
                    style: kResultsPageSuggestionStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            functionality: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
