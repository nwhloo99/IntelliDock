import 'package:chill/screens/constants.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_grid.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:flutter/material.dart';

class WarehouseDashboardScreen extends StatefulWidget {
  const WarehouseDashboardScreen({Key? key}) : super(key: key);

  @override
  _WarehouseDashboardScreenState createState() =>
      _WarehouseDashboardScreenState();
}

class _WarehouseDashboardScreenState extends State<WarehouseDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(children: <Widget>[
                  Container(
                      child: Text("Warehouse A",
                          style: TextStyle(
                              fontSize: kHeaderFont1,
                              fontWeight: FontWeight.bold))),
                  DockingBayGrid(),
                ]))));
  }
}
