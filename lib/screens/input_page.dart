import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../components/round_icon_button.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Sex { Male, Female, None }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex _activeSex = Sex.None;
  int _height = 72;
  int _weight = 165;
  int _age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: _activeSex == Sex.Male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    functionality: () {
                      print('MALE card was pressed');
                      setState(() {
                        _activeSex == Sex.Male
                            ? _activeSex = Sex.None
                            : _activeSex = Sex.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: _activeSex == Sex.Female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                        iconData: FontAwesomeIcons.venus, text: 'FEMALE'),
                    functionality: () {
                      print('FEMALE card was pressed');
                      setState(() {
                        _activeSex == Sex.Female
                            ? _activeSex = Sex.None
                            : _activeSex = Sex.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      _height.toString(),
                      style: kNumberLabelTextStyle,
                    ),
                    Text(
                      'inches',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: kSliderTheme,
                  child: Slider(
                    value: _height.toDouble(),
                    min: 36.0,
                    max: 84.0,
                    onChanged: (double sliderValue) {
                      print(sliderValue);
                      setState(() {
                        _height = sliderValue.truncate();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        _weight.toString(),
                        style: kNumberLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            functionality: () {
                              setState(() {
                                _weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            functionality: () {
                              setState(() {
                                _weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        _age.toString(),
                        style: kNumberLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            functionality: () {
                              setState(() {
                                _age--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            functionality: () {
                              setState(() {
                                _age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
              text: 'CALCULATE',
              functionality: () {
                CalculatorBrain calc = CalculatorBrain(_height, _weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ResultsPage(
                              calcBrain: calc,
                            )));
//                Navigator.pushNamed(context, '/calculate',
//                    arguments: <String, int>{
//                      'height': _height,
//                      'weight': _weight,
//                    });
              }),
//              Navigator.pushNamed(context, '/calculate');
        ],
      ),
    );
  }
}
