import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class DockingBayEntry extends StatefulWidget {
  const DockingBayEntry({Key? key, required this.dockingBay}) : super(key: key);

  final DockingBay dockingBay;

  @override
  _DockingBayEntryState createState() => _DockingBayEntryState();
}

class _DockingBayEntryState extends State<DockingBayEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ListHeader(header: this.widget.dockingBay.bayName),
              EntryText(
                  data: "Status: " +
                      (this.widget.dockingBay.isOccupied ? "In use" : "Free")),
              // TODO
              // HAULER FROM QUEUE OF HAULERS ARRIVING
              EntryText(data: "Haulers arriving: "),
              // TODO
              // Add ETA of Hauler
              EntryText(data: "ETA: -"),
              EntryText(data: "Hauler at bay: "),
              EntryText(data: "Time till available: 0 min"),
              NavigationButton(label: "Request", onPressed: () {})
            ]));
  }
}
