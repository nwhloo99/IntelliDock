import 'package:chill/model/model.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/hauler_dashboard_screen.dart';
import 'package:flutter/material.dart';

class HaulerBookingScreen extends StatelessWidget {
  final HaulerUser haulerUser;
  final Model SimulatedModel;
  final Request dockingBayRequest;

  const HaulerBookingScreen(
      this.haulerUser, this.SimulatedModel, this.dockingBayRequest,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text("Confirm booking",
                        style: TextStyle(fontSize: kHeaderFont1))),
                Text(dockingBayRequest.bay.bayNum.toString(),
                    style: TextStyle(fontSize: kHeaderFont2)),
                VideoStream(),
                Text(
                    "Est Time Remaining: " +
                        dockingBayRequest.estimatedReadyTime.inMinutes
                            .toString() +
                        " mins",
                    style: TextStyle(fontSize: kHeaderFont2)),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      side: BorderSide(color: kPrimaryColor, width: 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(36)))),
                  child: Text("Book", style: TextStyle(fontSize: kTextFont)),
                  onPressed: () {
                    SimulatedModel.loadingQueue
                        .acceptLoadingRequest(dockingBayRequest, haulerUser);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HaulerDashboardScreen(
                                haulerUser, SimulatedModel)));
                  },
                )
              ]),
        ),
      ),
    );
  }
}

class VideoStream extends StatelessWidget {
  const VideoStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.6,
        height: size.height * 0.5,
        child: Container(
            color: Color(0xFF57A5B8),
            child: Center(
                child: Text("Video Feed of docking bay",
                    style: TextStyle(fontSize: kHeaderFont1)))));
  }
}
