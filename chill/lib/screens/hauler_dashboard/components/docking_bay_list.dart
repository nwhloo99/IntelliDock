import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatefulWidget {
  DockingBayList({Key? key, required this.header}) : super(key: key);

  // TODO
  List<DockingBay> dockingBays = [];
  String header;

  @override
  _DockingBayListState createState() => _DockingBayListState();
}

// TODO
class _DockingBayListState extends State<DockingBayList> {
  // Future<DockingBay> getData() async {

  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
            child: Column(
      children: <Widget>[
        ListHeader(header: this.widget.header),
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
