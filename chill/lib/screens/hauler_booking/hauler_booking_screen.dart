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
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text("Confirm booking",
                        style: TextStyle(fontSize: kHeaderFont1))),
                Text(dockingBay, style: TextStyle(fontSize: kHeaderFont2)),
                Text(
                    "Est Time Remaining: " +
                        this.estTime.inMinutes.toString() +
                        " mins",
                    style: TextStyle(fontSize: kHeaderFont2)),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      side: BorderSide(color: kPrimaryColor, width: 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(36)))),
                  child: Text("Book", style: TextStyle(fontSize: kTextFont)),
                  onPressed: () {},
                )
              ]),
        ),
      ),
    );
  }
}
