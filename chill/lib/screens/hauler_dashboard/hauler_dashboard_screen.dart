import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
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
                    Container(
                        decoration: BoxDecoration(color: kPrimaryColor),
                        child: Text("DASHBOARD")),
                    Container(
                        child: ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("Hello"),
                            style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(36))),
                            ))
                      ],
                    )),
                    ListHeader(),
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
