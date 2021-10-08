import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatelessWidget {
  const DockingBayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
            child: Column(
      children: <Widget>[
        ListHeader(),
        Expanded(
            child: Container(
                child: ListView(
          children: [
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
            DockingBayCard(
              containerNumber: "10",
              dockingBay: "A1",
              pickupTime: TimeOfDay(hour: 9, minute: 0),
              estTime: Duration(hours: 3),
            ),
          ],
        )))
      ],
    )));
  }
}
