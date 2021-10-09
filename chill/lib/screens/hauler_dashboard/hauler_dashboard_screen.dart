import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/current_booking.dart';
import 'package:chill/screens/hauler_dashboard/components/dashboard_buttons.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_list.dart';
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
                child: Column(children: <Widget>[
                  Container(
                      child: Text("Hauler Dashboard",
                          style: TextStyle(
                              fontSize: kHeaderFont1,
                              fontWeight: FontWeight.bold))),
                  DashboardButtons(),
                  CurrentBooking(),
                  Expanded(
                      child: Row(children: [
                    DockingBayList(header: "Loading bay"),
                    DockingBayList(header: "Unloading bay")
                  ]))
                ]))));
  }
}
