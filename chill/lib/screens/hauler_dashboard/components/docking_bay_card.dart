import 'package:chill/model/model.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/queues/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_booking/hauler_booking_screen.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:flutter/material.dart';

class DockingBayCard extends StatefulWidget {
  HaulerUser haulerUser;
  Request dockingBayRequest;
  Model simulatedModel;

  DockingBayCard(this.dockingBayRequest, this.haulerUser, this.simulatedModel,
      {Key? key})
      : super(key: key);

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
                      EntryText(
                          data: "Docking bay: " +
                              this
                                  .widget
                                  .dockingBayRequest
                                  .bay
                                  .bayNum
                                  .toString()),
                      EntryText(
                          data: "Est Time Remaining: " +
                              this
                                  .widget
                                  .dockingBayRequest
                                  .estimatedReadyTime
                                  .inMinutes
                                  .toString() +
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
                                      this.widget.haulerUser,
                                      this.widget.simulatedModel,
                                      this.widget.dockingBayRequest,
                                    )));
                      },
                      icon: Icon(Icons.arrow_right))
                ])));
  }
}
