import 'package:chill/utils/constants.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
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
  Color getStatusColor(DockingBay bay) {
    Color colorAvailable = Color(0xFF7CF3A0);
    Color colorAwaiting = Color(0xFFFEDE00);
    Color colorOccupied = Color(0xFFFF3212);
    BayState state = bay.state;
    switch (state) {
      case BayState.Available:
        {
          return colorAvailable;
        }

      case BayState.Awaiting:
        {
          return colorAwaiting;
        }

      case BayState.Occupied:
        {
          return colorOccupied;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    String nxtHauler = '';
    String ETAofNxtHauler = '';
    if (this.widget.dockingBay.incomingHauler.isEmpty) {
      nxtHauler = 'NIL';
      ETAofNxtHauler = 'NIL';
    } else {
      nxtHauler =
          this.widget.dockingBay.incomingHauler.first.haulerNum.toString();
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
    if (this.widget.dockingBay.state == BayState.Occupied) {
      // currentHauler = this.widget.dockingBay.currentHauler.haulerNum.toString();
      // timeLft = this.widget.dockingBay.estimatedDuration.inMinutes.toString();
    } else {
      currentHauler = 'NIL';
      timeLft = 'NIL';
    }

    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: getStatusColor(this.widget.dockingBay)),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(children: <Widget>[
          ListHeader(header: this.widget.dockingBay.bayNum.toString()),
          EntryText(
              data: "Status: " +
                  (this.widget.dockingBay.state == BayState.Occupied
                      ? "In use"
                      : "Free")),
          EntryText(data: "Next Hauler: " + nxtHauler),
          EntryText(data: "ETA: " + ETAofNxtHauler + " min"),
          EntryText(data: "Hauler at bay: " + currentHauler),
          EntryText(data: "Time till available: " + timeLft + " min"),
          NavigationButton(label: "Request", onPressed: () {})
        ]));
  }
}
