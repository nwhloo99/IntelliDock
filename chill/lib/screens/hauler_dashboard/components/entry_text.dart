import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class EntryText extends StatelessWidget {
  const EntryText({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: kTextFont, fontWeight: FontWeight.w400),
    );
  }
}
