import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            this.header,
            style:
                TextStyle(fontSize: kHeaderFont2, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
