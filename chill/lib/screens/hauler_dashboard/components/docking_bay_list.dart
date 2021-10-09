import 'package:chill/model/port_map.dart';
import 'package:chill/queueManager/loading_queue.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/screens/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatefulWidget {
  String header;
  HaulerUser haulerUser;
  LoadingQueue dockingBayList;
  PortMap portMap;

  DockingBayList(this.dockingBayList, this.haulerUser, this.portMap,
      {Key? key, required this.header})
      : super(key: key);

  @override
  _DockingBayListState createState() => _DockingBayListState();
}

// TODO Need to refresh List
class _DockingBayListState extends State<DockingBayList> {
  // Future<DockingBay> getData() async {

  //

  @override
  Widget build(BuildContext context) {
    List<DockingBayCard> cardList = [];
    this.widget.dockingBayList.requestList.forEach((bayRequest) {
      DockingBayCard card = new DockingBayCard(
          bayRequest,
          this.widget.dockingBayList,
          this.widget.haulerUser,
          this.widget.portMap);
      cardList.add(card);
    });

    return Container(
        child: Expanded(
            child: Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ListHeader(header: this.widget.header),
              IconButton(
                  color: kPrimaryColor,
                  iconSize: 30,
                  onPressed: () {
                    print("REFRESH");
                  },
                  icon: Icon(Icons.refresh))
            ]),
        Expanded(
            child: Container(
                child: ListView(
          children: cardList,
        )))
      ],
    )));
  }
}
