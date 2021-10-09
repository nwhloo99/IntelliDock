import 'package:chill/constants.dart';
import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {Key? key, required this.label, required this.onPressed})
      : super(key: key);

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: this.onPressed,
        child: Text(this.label, style: TextStyle(fontSize: kTextFont)),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          primary: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(36))),
        ));
  }
}
