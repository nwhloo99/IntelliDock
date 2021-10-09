import 'package:chill/model/port_map.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests/loading_request.dart';
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
    //Temp Function to simulate loading list
    this.widget.loadingQueue.receiveLoadingRequest(new LoadingRequest(
        this.widget.simulationMap,
        new DockingBay('L1'),
        new DateTime(2021, 10, 9, 18, 0)));
    this.widget.loadingQueue.receiveLoadingRequest(new LoadingRequest(
        this.widget.simulationMap,
        new DockingBay('L2'),
        new DateTime(2021, 10, 10, 8, 0)));
    this.widget.loadingQueue.receiveLoadingRequest(new LoadingRequest(
        this.widget.simulationMap,
        new DockingBay('L3'),
        new DateTime(2021, 10, 9, 10, 0)));

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
                  CurrentBooking(this.widget.haulerUser),
                  Expanded(
                      child: Row(children: [
                    DockingBayList(
                        this.widget.loadingQueue, this.widget.haulerUser,
                        header: "Loading bay"),
                    DockingBayList(new LoadingQueue(), this.widget.haulerUser,
                        header: "Unloading bay")
                  ]))
                ]))));
  }
}
