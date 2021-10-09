import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/hauler_dashboard/components/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatefulWidget {
  String header;
  HaulerUser haulerUser;
  LoadingQueue loadingBayList;

  DockingBayList(this.loadingBayList, this.haulerUser,
      {Key? key, required this.header})
      : super(key: key);

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
    this.widget.loadingBayList.requestList.forEach((bayRequest) {
      DockingBayCard card = new DockingBayCard(
          bayRequest, this.widget.loadingBayList, this.widget.haulerUser);
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
