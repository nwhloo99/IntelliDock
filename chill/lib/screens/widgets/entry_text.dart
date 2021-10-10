import 'package:chill/utils/constants.dart';
import 'package:flutter/material.dart';

class EntryText extends StatelessWidget {
  const EntryText({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Text(
      data,
      style: TextStyle(
          fontSize: (size.width / 1200) * kTextFont,
          fontWeight: FontWeight.w600),
    );
  }
}
