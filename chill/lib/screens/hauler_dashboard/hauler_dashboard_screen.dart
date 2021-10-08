import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_list.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:chill/screens/hauler_dashboard/components/navigation_button.dart';
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
                      child: Text("Loading Dashboard",
                          style: TextStyle(
                              color: Color(0xFF050505),
                              fontSize: kHeaderFont1,
                              fontWeight: FontWeight.bold))),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ButtonBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          NavigationButton(label: "Map", onPressed: () {}),
                          NavigationButton(
                              label: "Unloading", onPressed: () {}),
                          NavigationButton(label: "Help", onPressed: () {})
                        ],
                      )),
                  Expanded(
                      child:
                          Row(children: [DockingBayList(), DockingBayList()]))
                ]))));
  }
}
