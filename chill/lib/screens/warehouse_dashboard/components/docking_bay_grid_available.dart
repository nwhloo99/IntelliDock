import 'package:chill/model/commands/queue/create_request_cmd.dart';
import 'package:chill/model/model.dart';
import 'package:chill/model/warehouse/docking_bay.dart';
import 'package:chill/queueManager/requests/request.dart';
import 'package:chill/screens/widgets/entry_text.dart';
import 'package:chill/screens/widgets/list_header.dart';
import 'package:chill/screens/widgets/navigation_button.dart';
import 'package:chill/utils/constants.dart';
import 'package:flutter/material.dart';

class DockingBayGridAvailable extends StatefulWidget {
  const DockingBayGridAvailable(
      {Key? key, required this.dockingBay, required this.simulatedModel})
      : super(key: key);

  final DockingBay dockingBay;
  final Model simulatedModel;

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
              InfoListAvailable(
                  dockingBay: this.widget.dockingBay,
                  simulatedModel: this.widget.simulatedModel)
            ]));
  }
}

class InfoListAvailable extends StatelessWidget {
  const InfoListAvailable(
      {Key? key, required this.dockingBay, required this.simulatedModel})
      : super(key: key);

  final DockingBay dockingBay;
  final Model simulatedModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        EntryText(data: "Status: Available"),
        NavigationButton(
            label: "Request",
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        backgroundColor: kBackgroundColor,
                        title: ListHeader(header: "Creating Request"),
                        content: EntryText(
                            data: "Requesting for haulier to " +
                                dockingBay.bayNum.toString()),
                        actions: <Widget>[
                          NavigationButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              label: "Cancel"),
                          NavigationButton(
                              onPressed: () {
                                CreateRequestCommand(
                                    new Request(
                                        JobType.Loading,
                                        dockingBay.parentWarehouse,
                                        dockingBay.bayNum),
                                    simulatedModel);
                                Navigator.pop(context, 'Confirm');
                              },
                              label: "Confirm"),
                        ],
                      ));
            })
      ],
    ));
  }
}
