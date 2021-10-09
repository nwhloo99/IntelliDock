import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/requests/loading_request.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class HaulerBookingScreen extends StatelessWidget {
  final HaulerUser haulerUser;
  final LoadingQueue loadingQueue;
  final LoadingRequest dockingBayRequest;

  const HaulerBookingScreen(
      this.haulerUser, this.loadingQueue, this.dockingBayRequest,
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
                Text(dockingBayRequest.bay.bayName,
                    style: TextStyle(fontSize: kHeaderFont2)),
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
                    loadingQueue.acceptLoadingRequest(
                        dockingBayRequest, haulerUser);
                    Navigator.pop(context);
                  },
                )
              ]),
        ),
      ),
    );
  }
}
