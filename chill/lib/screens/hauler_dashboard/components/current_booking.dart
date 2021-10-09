import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/entry_text.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:chill/screens/hauler_dashboard/components/navigation_button.dart';
import 'package:flutter/material.dart';

class CurrentBooking extends StatefulWidget {
  final HaulerUser haulerUser;
  const CurrentBooking(this.haulerUser, {Key? key}) : super(key: key);

  @override
  _CurrentBookingState createState() => _CurrentBookingState();
}

class _CurrentBookingState extends State<CurrentBooking> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin:
            EdgeInsets.symmetric(horizontal: size.width * 0.15, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(children: <Widget>[
          ListHeader(header: "Current Job"),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CurrentDockingBayInfo(this.widget.haulerUser),
                CurrentJobInfo(this.widget.haulerUser)
              ])
        ]));
  }
}

class CurrentJobInfo extends StatelessWidget {
  final HaulerUser haulerUser;
  const CurrentJobInfo(this.haulerUser, {Key? key}) : super(key: key);

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
  final HaulerUser haulerUser;
  const CurrentDockingBayInfo(this.haulerUser, {Key? key}) : super(key: key);

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
        EntryText(
            data: this.widget.haulerUser.currentBooking.first.bay.bayName),
        EntryText(
            data: this
                .widget
                .haulerUser
                .currentBooking
                .first
                .estimatedReadyTime
                .toString())
      ],
    ));
  }
}
