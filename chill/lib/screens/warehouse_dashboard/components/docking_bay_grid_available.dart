import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class DockingBayGridAvailable extends StatefulWidget {
  const DockingBayGridAvailable({Key? key, required this.dockingBay})
      : super(key: key);

  final DockingBay dockingBay;

  @override
  _DockingBayGridAvailableState createState() =>
      _DockingBayGridAvailableState();
}

class _DockingBayGridAvailableState extends State<DockingBayGridAvailable> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF7CF3A0)),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ListHeader(
                  header: "Docking Bay: " +
                      this.widget.dockingBay.bayNum.toString()),
              InfoListAvailable()
            ]));
  }
}

class InfoListAvailable extends StatelessWidget {
  const InfoListAvailable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        EntryText(data: "Status: Available"),
        NavigationButton(label: "Request", onPressed: () {})
      ],
    ));
  }
}
