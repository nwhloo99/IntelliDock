import 'package:chill/model/model.dart';
import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
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
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Center(
                    child: Row(
      children: <Widget>[],
    )))));
  }
}
