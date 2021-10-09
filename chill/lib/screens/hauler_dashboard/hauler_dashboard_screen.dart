import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/current_booking.dart';
import 'package:chill/screens/hauler_dashboard/components/dashboard_buttons.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_list.dart';
import 'package:flutter/material.dart';

class HaulerDashboardScreen extends StatefulWidget {
  final HaulerUser haulerUser;
  final LoadingQueue loadingQueue;
  final PortMap simulationMap;

  const HaulerDashboardScreen(
      this.haulerUser, this.loadingQueue, this.simulationMap,
      {Key? key})
      : super(key: key);

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
                      child: Text(this.widget.haulerUser.haulerName(),
                          style: TextStyle(
                              fontSize: kHeaderFont1,
                              fontWeight: FontWeight.bold))),
                  DashboardButtons(),
                  CurrentBooking(this.widget.haulerUser),
                  Expanded(
                      child: Row(children: [
                    DockingBayList(this.widget.loadingQueue,
                        this.widget.haulerUser, this.widget.simulationMap,
                        header: "Loading bay"),
                    DockingBayList(new LoadingQueue(), this.widget.haulerUser,
                        this.widget.simulationMap,
                        header: "Unloading bay")
                  ]))
                ]))));
  }
}
