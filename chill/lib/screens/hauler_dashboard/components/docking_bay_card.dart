import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_booking/hauler_booking_screen.dart';
import 'package:chill/screens/hauler_dashboard/components/entry_text.dart';
import 'package:flutter/material.dart';

class DockingBayCard extends StatefulWidget {
  DockingBayCard(
      {Key? key,
      required this.containerNumber,
      required this.dockingBay,
      required this.pickupTime,
      required this.estTime})
      : super(key: key);

  String containerNumber;
  String dockingBay;
  TimeOfDay pickupTime;
  Duration estTime;

  @override
  _DockingBayCardState createState() => _DockingBayCardState();
}

class _DockingBayCardState extends State<DockingBayCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      EntryText(data: "Docking bay: " + this.widget.dockingBay),
                      EntryText(
                          data: "Est Time Remaining: " +
                              this.widget.estTime.inMinutes.toString() +
                              " mins")
                    ],
                  ),
                  IconButton(
                      iconSize: 60,
                      color: kPrimaryColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HaulerBookingScreen(
                                    dockingBay: this.widget.dockingBay,
                                    estTime: this.widget.estTime)));
                      },
                      icon: Icon(Icons.arrow_right))
                ])));
  }
}
