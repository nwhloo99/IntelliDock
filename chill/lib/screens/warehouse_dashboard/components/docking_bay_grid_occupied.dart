import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:chill/utils/constants.dart';
import 'package:flutter/material.dart';

class DockingBayGridOccupied extends StatefulWidget {
  const DockingBayGridOccupied({Key? key, required this.dockingBay})
      : super(key: key);

  final DockingBay dockingBay;

  @override
  _DockingBayGridOccupiedState createState() => _DockingBayGridOccupiedState();
}

class _DockingBayGridOccupiedState extends State<DockingBayGridOccupied> {
  @override
  Widget build(BuildContext context) {
    String nextHauler = '';
    String etaOfNextHauler = '';
    if (this.widget.dockingBay.incomingHauler.isEmpty) {
      nextHauler = 'NIL';
      etaOfNextHauler = '-';
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

    String timeLeft = '';
    if (this.widget.dockingBay.state == BayState.Occupied) {
      timeLeft = this.widget.dockingBay.estimatedDuration.inMinutes.toString();
    } else {
      timeLeft = '-';
    }

    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFFF3212)),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ListHeader(
                  header: "Docking Bay: " +
                      this.widget.dockingBay.bayNum.toString()),
              InfoListOccupied(
                  nextHauler: nextHauler,
                  etaOfNextHauler: etaOfNextHauler,
                  timeLeft: timeLeft)
            ]));
  }
}

class InfoListOccupied extends StatelessWidget {
  const InfoListOccupied(
      {Key? key,
      required this.nextHauler,
      required this.etaOfNextHauler,
      required this.timeLeft})
      : super(key: key);

  final String nextHauler;
  final String etaOfNextHauler;
  final String timeLeft;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          EntryText(data: "Status: Occupied"),
          EntryText(data: "Next Hauler: " + nextHauler),
          EntryText(data: "ETA: " + etaOfNextHauler + " min"),
          EntryText(data: "Time till ready: " + timeLeft + " min"),
          NavigationButton(label: "Request", onPressed: () {})
        ]));
  }
}
