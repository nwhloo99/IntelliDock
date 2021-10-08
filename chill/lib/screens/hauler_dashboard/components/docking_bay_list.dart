import 'package:chill/model/docking_bay.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayTracker extends StatefulWidget {
  DockingBayTracker({Key? key, required this.header}) : super(key: key);

  // TODO
  List<DockingBay> dockingBays = [];
  String header;

  @override
  _DockingBayTrackerState createState() => _DockingBayTrackerState();
}

// TODO
class _DockingBayTrackerState extends State<DockingBayTracker> {
  // Future<DockingBay> getData() async {

  // }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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
