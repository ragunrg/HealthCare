import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;

const bottomContainerColor = Color(0xFFEB114D);

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String title;
  BottomButton({@required this.onTap, @required this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 15.0),
        height: bottomContainerHeight,
        width: double.infinity,
        color: bottomContainerColor,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
