import 'package:google_fonts/google_fonts.dart';
import 'package:health_expert/input_page.dart';
import 'package:flutter/material.dart';
import 'package:health_expert/Reusable_card.dart';
import 'main.dart';
import 'package:health_expert/BottomButton_page.dart';
import 'package:health_expert/Calculator.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;
  ResultPage({this.bmi, this.result, this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result Page',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'YOUR RESULT',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: clr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[300],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    bmi,
                    style: GoogleFonts.darkerGrotesque(
                      fontSize: 160,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      interpretation,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
