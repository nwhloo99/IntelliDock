import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_entry.dart';
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
            physics: ScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            children: <Widget>[
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
          DockingBayEntry(dockingBay: DockingBay("Docking Bay 1")),
        ]));
  }
}
