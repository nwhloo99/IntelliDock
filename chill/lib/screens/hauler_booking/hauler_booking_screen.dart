import 'package:chill/screens/constants.dart';
import 'package:flutter/material.dart';

class HaulerBookingScreen extends StatelessWidget {
  const HaulerBookingScreen(
      {Key? key, required this.dockingBay, required this.estTime})
      : super(key: key);

  final String dockingBay;
  final Duration estTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text("Booking Screen",
                        style: TextStyle(fontSize: kHeaderFont1))),
                Text(dockingBay),
                Text("Est Time Remaining: " +
                    this.estTime.inMinutes.toString() +
                    " mins")
              ]),
        ),
      ),
    );
  }
}
