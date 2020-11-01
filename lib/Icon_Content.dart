import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            label,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
