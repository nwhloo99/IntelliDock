import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/entry_text.dart';
import 'package:flutter/material.dart';

class CurrentBooking extends StatefulWidget {
  const CurrentBooking({Key? key}) : super(key: key);

  @override
  _CurrentBookingState createState() => _CurrentBookingState();
}

class _CurrentBookingState extends State<CurrentBooking> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kSecondaryColor,
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          EntryText(data: "Current Booking"),
          Row(children: <Widget>[
            EntryText(data: "Docking Bay: A2"),
          ])
        ]));
  }
}
