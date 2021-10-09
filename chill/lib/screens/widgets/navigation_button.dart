import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {Key? key, required this.label, required this.onPressed})
      : super(key: key);

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: this.onPressed,
      child: Text(this.label, style: TextStyle(fontSize: kTextFont)),
      style: OutlinedButton.styleFrom(
          primary: kTextColor,
          backgroundColor: kSecondaryColor,
          padding: EdgeInsets.all(10),
          side: BorderSide(color: kPrimaryColor, width: 1.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(36)))),
    );
  }
}
