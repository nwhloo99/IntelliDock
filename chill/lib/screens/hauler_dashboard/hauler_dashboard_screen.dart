import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/header.dart';
import 'package:flutter/material.dart';

class HaulerDashboardScreen extends StatefulWidget {
  const HaulerDashboardScreen({Key? key}) : super(key: key);

  @override
  _HaulerDashboardScreenState createState() => _HaulerDashboardScreenState();
}

class _HaulerDashboardScreenState extends State<HaulerDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: <Widget>[
                    Header(),
                    Expanded(
                        child: ListView(
                      children: [
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                        DockingBarCard(
                          containerNumber: "10",
                          dockingBay: "A1",
                          pickupTime: TimeOfDay(hour: 9, minute: 0),
                          estTime: Duration(hours: 3),
                        ),
                      ],
                    ))
                  ],
                ))));
  }
}
