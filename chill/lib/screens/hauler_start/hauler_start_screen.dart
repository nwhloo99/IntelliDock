import 'package:chill/model/model.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/hauler_dashboard/hauler_dashboard_screen.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class HaulerStartScreen extends StatefulWidget {
  const HaulerStartScreen(this.haulerUser, this.map, {Key? key})
      : super(key: key);

  final HaulerUser haulerUser;
  final Model map;

  @override
  _HaulerStartScreenState createState() => _HaulerStartScreenState();
}

class _HaulerStartScreenState extends State<HaulerStartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Center(
                    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ListHeader(header: "Job has started"),
        SizedBox(
            height: size.height * 0.6,
            width: size.width * 0.6,
            child: Container(
                color: Colors.greenAccent,
                child: Center(
                    child: Text("MAP TO SHOW ROUTE",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: (size.width / 1200) * 44))))),
        NavigationButton(
            label: "Finished",
            onPressed: () {
              this.widget.haulerUser.currentBooking.removeAt(0);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HaulerDashboardScreen(
                          this.widget.haulerUser, this.widget.map)));
            })
      ],
    )))));
  }
}
