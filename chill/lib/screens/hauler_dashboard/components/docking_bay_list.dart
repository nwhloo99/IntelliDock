import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatefulWidget {
  List<Request> bayList = new List.empty();
  DockingBayList(this.bayList, {Key? key, required this.header})
      : super(key: key);

  // TODO
  List<DockingBay> dockingBays = [];
  String header;

  @override
  _DockingBayListState createState() => _DockingBayListState();
}

// TODO
class _DockingBayListState extends State<DockingBayList> {
  // Future<DockingBay> getData() async {

  // }
  List<DockingBayCard> cardList = [];

  @override
  Widget build(BuildContext context) {
    this.widget.bayList.forEach((bayRequest) {
      DockingBayCard card = new DockingBayCard(bayRequest);
      cardList.add(card);
    });

    return Container(
        child: Expanded(
            child: Column(
      children: <Widget>[
        ListHeader(header: this.widget.header),
        Expanded(
            child: Container(
                child: ListView(
          children: cardList,
        )))
      ],
    )));
  }
}
