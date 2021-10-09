import 'package:chill/screens/hauler_dashboard/components/navigation_button.dart';
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
            NavigationButton(label: "Warehouse", onPressed: () {}),
            NavigationButton(label: "Help", onPressed: () {})
          ],
        ));
  }
}
