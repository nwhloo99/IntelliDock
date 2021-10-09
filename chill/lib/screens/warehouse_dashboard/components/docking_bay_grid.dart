import 'package:chill/screens/constants.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayGrid extends StatefulWidget {
  const DockingBayGrid({Key? key}) : super(key: key);

  @override
  _DockingBayGridState createState() => _DockingBayGridState();
}

class _DockingBayGridState extends State<DockingBayGrid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
            primary: false,
            crossAxisCount: 3,
            children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(children: <Widget>[
                ListHeader(header: "Docking bay 1"),
                EntryText(data: "Status: Free"),
                EntryText(data: "Haulers arriving: None"),
                EntryText(data: "ETA: -"),
              ])),
        ]));
  }
}
