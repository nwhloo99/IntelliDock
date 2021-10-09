import 'package:chill/model/model.dart';
import 'package:chill/queueManager/user/hauler_user.dart';
import 'package:chill/constants.dart';
import 'package:chill/screens/hauler_dashboard/components/docking_bay_card.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:flutter/material.dart';

class DockingBayList extends StatefulWidget {
  String header;
  HaulerUser haulerUser;
  Model simulatedModel;

  DockingBayList(this.haulerUser, this.simulatedModel,
      {Key? key, required this.header})
      : super(key: key);

  @override
  _DockingBayListState createState() => _DockingBayListState();
}

class _DockingBayListState extends State<DockingBayList> {
  // Future<DockingBay> getData() async {

  //

  @override
  Widget build(BuildContext context) {
    List<DockingBayCard> cardList = [];
    this.widget.simulatedModel.loadingQueue.requestList.forEach((bayRequest) {
      DockingBayCard card = new DockingBayCard(
          bayRequest, this.widget.haulerUser, this.widget.simulatedModel);
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
