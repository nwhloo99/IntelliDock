import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/entry_text.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:chill/screens/hauler_dashboard/components/navigation_button.dart';
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
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 200, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(children: <Widget>[
          ListHeader(header: "Current Job"),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[CurrentDockingBayInfo(), CurrentJobInfo()])
        ]));
  }
}

class CurrentJobInfo extends StatelessWidget {
  const CurrentJobInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              EntryText(data: "Loading job"),
              EntryText(data: "Time: 1030 - 1130"),
              NavigationButton(label: "Start", onPressed: () {})
            ]));
  }
}

class CurrentDockingBayInfo extends StatefulWidget {
  const CurrentDockingBayInfo({Key? key}) : super(key: key);

  @override
  _CurrentDockingBayInfoState createState() => _CurrentDockingBayInfoState();
}

class _CurrentDockingBayInfoState extends State<CurrentDockingBayInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        EntryText(data: "Docking Bay"),
        EntryText(data: "A2"),
        EntryText(data: "Est Time: 180 mins")
      ],
    ));
  }
}
