import 'package:chill/model/hauler/hauler.dart';
import 'package:chill/model/model.dart';
import 'package:chill/model/warehouse/warehouse.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/utils/constants.dart';
import 'package:chill/screens/hauler_dashboard/hauler_dashboard_screen.dart';
import 'package:chill/screens/warehouse_dashboard/warehouse_dashboard_screen.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage(this.haulerUser, this.bayUser, this.simulatedModel, {Key? key})
      : super(key: key);

  final HaulerUser haulerUser;
  final WarehouseUser bayUser;
  final Model simulatedModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "WELCOME TO MOBILE LEGENDS",
              style: TextStyle(
                  fontSize: kHeaderFont1, fontWeight: FontWeight.bold),
            ),
            NavigationButton(
                label: "Warehouse",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              WarehouseDashboardScreen(bayUser)));
                }),
            NavigationButton(
                label: "Hauler",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HaulerDashboardScreen(
                              haulerUser, simulatedModel)));
                }),
          ],
        ),
      ),
    )));
  }
}
