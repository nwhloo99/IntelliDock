import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatefulWidget {
  String header;
  HaulerUser haulerUser;
  LoadingQueue loadingBayList;
  PortMap portMap;

  DockingBayList(this.loadingBayList, this.haulerUser, this.portMap,
      {Key? key, required this.header})
      : super(key: key);

  @override
  _DockingBayListState createState() => _DockingBayListState();
}

// TODO Need to refresh List
class _DockingBayListState extends State<DockingBayList> {
  // Future<DockingBay> getData() async {

  // }
  List<DockingBayCard> cardList = [];

  @override
  Widget build(BuildContext context) {
    this.widget.loadingBayList.requestList.forEach((bayRequest) {
      DockingBayCard card = new DockingBayCard(
          bayRequest,
          this.widget.loadingBayList,
          this.widget.haulerUser,
          this.widget.portMap);
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
