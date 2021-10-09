import 'package:chill/screens/hauler_dashboard/components/navigation_button.dart';
import 'package:chill/screens/warehouse_dashboard/warehouse_dashboard_screen.dart';
import 'package:flutter/material.dart';

class DashboardButtons extends StatelessWidget {
  const DashboardButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            NavigationButton(label: "Map", onPressed: () {}),
            NavigationButton(
                label: "Warehouse",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WarehouseDashboardScreen()));
                }),
            NavigationButton(label: "Help", onPressed: () {})
          ],
        ));
  }
}
