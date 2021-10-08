import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Available Docking Bays",
            style: TextStyle(
                color: Color(0xFF050505),
                fontSize: kHeaderFont,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
