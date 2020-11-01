import 'package:health_expert/Calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_card.dart';
import 'Icon_Content.dart';
import 'Result_page.dart';
import 'package:health_expert/BottomButton_page.dart';
import 'package:health_expert/RoundIconButton_page.dart';
import 'package:google_fonts/google_fonts.dart';

const clr = Color(0xFF1D1E33);
const clr1 = Color(0xFF1D1E22);
enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selected;
int height = 200;
int weight = 60;
int age = 30;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected = Gender.Male;
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selected == Gender.Male ? clr1 : clr,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected = Gender.Female;
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: selected == Gender.Female ? clr1 : clr,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: clr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: GoogleFonts.darkerGrotesque(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Colors.pink,
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 150,
                        max: 250,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: clr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: GoogleFonts.darkerGrotesque(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: clr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: GoogleFonts.darkerGrotesque(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ResultPage(
                    bmi: calc.calculateBMI(),
                    result: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  );
                }),
              );
            },
            title: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
