import 'package:chill/utils/constants.dart';
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({Key? key, required this.header}) : super(key: key);

  final String header;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Text(
            this.header,
            style: TextStyle(
                fontSize: (size.width / 1200) * kHeaderFont2,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
