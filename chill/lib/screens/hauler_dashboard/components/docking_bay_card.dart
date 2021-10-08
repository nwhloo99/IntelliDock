import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/entry_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DockingBarCard extends StatefulWidget {
  DockingBarCard(
      {Key? key,
      required this.containerNumber,
      required this.dockingBay,
      required this.pickupTime,
      required this.estTime})
      : super(key: key);

  String containerNumber;
  String dockingBay;
  TimeOfDay pickupTime;
  Duration estTime;

  @override
  _DockingBarCardState createState() => _DockingBarCardState();
}

class _DockingBarCardState extends State<DockingBarCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            EntryText(data: "Container: " + this.widget.containerNumber),
            EntryText(data: "Docking bay: " + this.widget.dockingBay),
            EntryText(
                data: "Est Time Remaining: " +
                    this.widget.estTime.inMinutes.toString() +
                    " mins")
          ],
        ));
  }
}
