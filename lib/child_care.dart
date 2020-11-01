import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_expert/vaccine/afterSix.dart';
import 'package:health_expert/vaccine/birth.dart';
import 'package:health_expert/vaccine/oneTwo.dart';
import 'package:health_expert/vaccine/twoFour.dart';

import 'BottomButton_page.dart';
import 'Icon_Content.dart';
import 'Reusable_card.dart';

class childCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Child Care',
          style: GoogleFonts.darkerGrotesque(fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableCard(
              onPress: null,
              cardChild: IconContent(
                icon: FontAwesomeIcons.syringe,
                label: '  VACCINE SCHEDULE ',
              ),
              colour: Colors.pink,
            ),
            Divider(
              height: 40,
            ),
            BottomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Birth();
                    }),
                  );
                },
                title: 'At Birth'),
            BottomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return oneTwo();
                    }),
                  );
                },
                title: 'Between 1 to 2 Months'),
            BottomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return twoFour();
                    }),
                  );
                },
                title: 'Between 2 to 4 Months'),
            BottomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return afterSix();
                    }),
                  );
                },
                title: 'After 6 Months'),
          ],
        ),
      ),
    );
  }
}
