import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class DockingBayEntry extends StatefulWidget {
  const DockingBayEntry({Key? key, required this.dockingBay}) : super(key: key);

  final DockingBay dockingBay;

  @override
  _DockingBayEntryState createState() => _DockingBayEntryState();
}

class _DockingBayEntryState extends State<DockingBayEntry> {
  @override
  Widget build(BuildContext context) {
    String nxtHauler = '';
    String ETAofNxtHauler = '';
    if (this.widget.dockingBay.incomingHauler.isEmpty) {
      nxtHauler = 'NIL';
      ETAofNxtHauler = 'NIL';
    } else {
      nxtHauler = this.widget.dockingBay.incomingHauler.first.haulerName;
      ETAofNxtHauler = this
          .widget
          .dockingBay
          .incomingHauler
          .first
          .EstimatedTravelTime
          .inMinutes
          .toString();
    }

    String currentHauler = '';
    String timeLft = '';
    if (this.widget.dockingBay.isOccupied) {
      currentHauler = this.widget.dockingBay.currentHauler.haulerName;
      timeLft = this.widget.dockingBay.estimatedDuration.inMinutes.toString();
    } else {
      currentHauler = 'NIL';
      timeLft = 'NIL';
    }

    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(children: <Widget>[
          ListHeader(header: this.widget.dockingBay.bayName),
          EntryText(
              data: "Status: " +
                  (this.widget.dockingBay.isOccupied ? "In use" : "Free")),
          EntryText(data: "Next Hauler: " + nxtHauler),
          EntryText(data: "ETA: " + ETAofNxtHauler + " min"),
          EntryText(data: "Hauler at bay: " + currentHauler),
          EntryText(data: "Time till available: " + timeLft + " min"),
          NavigationButton(label: "Request", onPressed: () {})
        ]));
  }
}
