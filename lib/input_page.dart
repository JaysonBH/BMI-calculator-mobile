import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF11328);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

enum Sex { Male, Female, None }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex activeSex = Sex.None;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeSex == Sex.Male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                    functionality: () {
                      print('MALE card was pressed');
                      setState(() {
                        activeSex == Sex.Male
                            ? activeSex = Sex.None
                            : activeSex = Sex.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeSex == Sex.Female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                        iconData: FontAwesomeIcons.venus, text: 'FEMALE'),
                    functionality: () {
                      print('FEMALE card was pressed');
                      setState(() {
                        activeSex == Sex.Female
                            ? activeSex = Sex.None
                            : activeSex = Sex.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: activeCardColor)),
                Expanded(child: ReusableCard(color: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
