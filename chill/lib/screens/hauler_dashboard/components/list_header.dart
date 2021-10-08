import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Text(
            "Available Docking Bays",
            style: TextStyle(
                color: Color(0xFF050505),
                fontSize: kHeaderFont2,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
