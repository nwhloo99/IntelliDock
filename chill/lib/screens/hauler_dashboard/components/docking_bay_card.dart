import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/entry_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DockingBayCard extends StatefulWidget {
  DockingBayCard(
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
  _DockingBayCardState createState() => _DockingBayCardState();
}

class _DockingBayCardState extends State<DockingBayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(88)),
            color: kSecondaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            EntryText(data: "Docking bay: " + this.widget.dockingBay),
            EntryText(
                data: "Est Time Remaining: " +
                    this.widget.estTime.inMinutes.toString() +
                    " mins")
          ],
        ));
  }
}
