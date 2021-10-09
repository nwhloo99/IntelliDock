import 'package:chill/model/model.dart';
import 'package:chill/queueManager/queues/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/current_booking.dart';
import 'package:chill/screens/hauler_dashboard/components/dashboard_buttons.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_list.dart';
import 'package:flutter/material.dart';

class HaulerDashboardScreen extends StatefulWidget {
  final HaulerUser haulerUser;
  final Model simulatedModel;

  const HaulerDashboardScreen(this.haulerUser, this.simulatedModel, {Key? key})
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
                  CurrentBooking(
                      this.widget.haulerUser, this.widget.simulatedModel),
                  Expanded(
                      child: Row(children: [
                    DockingBayList(
                        this.widget.haulerUser, this.widget.simulatedModel,
                        header: "Loading bay"),
                    DockingBayList(
                        this.widget.haulerUser, this.widget.simulatedModel,
                        header: "Unloading bay")
                  ]))
                ]))));
  }
}
