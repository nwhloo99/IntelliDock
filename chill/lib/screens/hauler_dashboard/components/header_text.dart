import 'package:chill/screens/constants.dart';
import 'package:flutter/cupertino.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontSize: kHeaderFont, fontWeight: FontWeight.w600),
    );
  }
}
