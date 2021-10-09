import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/user/loadingbay_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/hauler_dashboard_screen.dart';
import 'package:chill/screens/warehouse_dashboard/warehouse_dashboard_screen.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(
      this.haulerUser, this.bayUser, this.loadingQueue, this.simulationMap,
      {Key? key})
      : super(key: key);

  final HaulerUser haulerUser;
  final LoadingBayUser bayUser;
  final LoadingQueue loadingQueue;
  final PortMap simulationMap;

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
                          builder: (context) => WarehouseDashboardScreen()));
                }),
            NavigationButton(
                label: "Hauler",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HaulerDashboardScreen(
                              haulerUser, loadingQueue, simulationMap)));
                }),
          ],
        ),
      ),
    )));
  }
}
