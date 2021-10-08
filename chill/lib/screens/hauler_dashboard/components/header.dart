import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/header_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderText(label: "Container No."),
            HeaderText(label: "Docking Bay"),
            HeaderText(label: "Pickup Time"),
            HeaderText(label: "Availability")
          ],
        ));
  }
}
