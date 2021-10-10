import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:chill/utils/constants.dart';
import 'package:flutter/material.dart';

class DockingBayGridAwaiting extends StatefulWidget {
  const DockingBayGridAwaiting({Key? key, required this.dockingBay})
      : super(key: key);

  final DockingBay dockingBay;

  @override
  _DockingBayGridAwaitingState createState() => _DockingBayGridAwaitingState();
}

class _DockingBayGridAwaitingState extends State<DockingBayGridAwaiting> {
  @override
  Widget build(BuildContext context) {
    String nextHauler = '';
    String etaOfNextHauler = '';
    if (this.widget.dockingBay.incomingHauler.isEmpty) {
      nextHauler = 'NIL';
      etaOfNextHauler = 'NIL';
    } else {
      nextHauler =
          this.widget.dockingBay.incomingHauler.first.haulerNum.toString();
      etaOfNextHauler = this
          .widget
          .dockingBay
          .incomingHauler
          .first
          .EstimatedTravelTime
          .inMinutes
          .toString();
    }

    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFFEDE00)),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ListHeader(
                  header: "Docking Bay: " +
                      this.widget.dockingBay.bayNum.toString()),
              InfoListAwaiting(
                etaOfNextHauler: etaOfNextHauler,
                nextHauler: nextHauler,
              )
              //NavigationButton(label: "Request", onPressed: () {})
            ]));
  }
}

class InfoListAwaiting extends StatelessWidget {
  const InfoListAwaiting(
      {Key? key, required this.nextHauler, required this.etaOfNextHauler})
      : super(key: key);

  final String nextHauler;
  final String etaOfNextHauler;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          EntryText(data: "Status: Awaiting"),
          EntryText(data: "Next Hauler: " + nextHauler),
          EntryText(data: "ETA: " + etaOfNextHauler + " min"),
        ]));
  }
}
