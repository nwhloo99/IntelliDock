import 'package:chill/model/commands/model/warehouse/hauler_travelling_to_destination_cmd.dart';
import 'package:chill/model/model.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/utils/constants.dart';
import 'package:chill/screens/hauler_start/hauler_start_screen.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class CurrentBooking extends StatefulWidget {
  final HaulerUser haulerUser;
  final Model simulationMap;
  const CurrentBooking(this.haulerUser, this.simulationMap, {Key? key})
      : super(key: key);

  @override
  _CurrentBookingState createState() => _CurrentBookingState();
}

class _CurrentBookingState extends State<CurrentBooking> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        decoration: BoxDecoration(
            color: kSecondaryColor,
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin:
            EdgeInsets.symmetric(horizontal: size.width * 0.15, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(children: <Widget>[
          ListHeader(header: "Current Job"),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CurrentDockingBayInfo(this.widget.haulerUser),
                CurrentJobInfo(
                    this.widget.haulerUser, this.widget.simulationMap)
              ])
        ]));
  }
}

class CurrentJobInfo extends StatelessWidget {
  final HaulerUser haulerUser;
  final Model simulationMap;
  const CurrentJobInfo(this.haulerUser, this.simulationMap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavigationButton(
                  label: "Start",
                  onPressed: () {
                    HaulerTravellingToDestinationCommand(
                        this.haulerUser.self.haulerNum,
                        this.haulerUser.currentBooking.first.warehouseName,
                        this.haulerUser.currentBooking.first.bayNum,
                        this.simulationMap);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HaulerStartScreen(haulerUser, simulationMap)));
                  })
            ]));
  }
}

class CurrentDockingBayInfo extends StatefulWidget {
  final HaulerUser haulerUser;
  const CurrentDockingBayInfo(this.haulerUser, {Key? key}) : super(key: key);

  @override
  _CurrentDockingBayInfoState createState() => _CurrentDockingBayInfoState();
}

class _CurrentDockingBayInfoState extends State<CurrentDockingBayInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: this.widget.haulerUser.currentBooking.isEmpty
              ? <Widget>[EntryText(data: "No Request")]
              : <Widget>[
                  EntryText(
                      data: "Warehouse: " +
                          this
                              .widget
                              .haulerUser
                              .currentBooking
                              .first
                              .warehouseName),
                  EntryText(
                      data: "Docking Bay: " +
                          this
                              .widget
                              .haulerUser
                              .currentBooking
                              .first
                              .bayNum
                              .toString()),
                ],
        ));
  }
}
