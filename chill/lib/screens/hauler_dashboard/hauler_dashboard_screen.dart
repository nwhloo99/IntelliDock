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
            body: Column(
      children: <Widget>[Header()],
    )));
  }
}
