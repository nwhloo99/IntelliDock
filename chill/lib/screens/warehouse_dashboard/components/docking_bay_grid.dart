import 'package:chill/model/model.dart';
import 'package:chill/queueManager/user/warehouse_user.dart';
import 'package:chill/screens/warehouse_dashboard/components/docking_bay_entry.dart';
import 'package:flutter/material.dart';

class DockingBayGrid extends StatefulWidget {
  const DockingBayGrid(
      {Key? key, required this.warehouseUser, required this.simulatedModel})
      : super(key: key);

  final WarehouseUser warehouseUser;
  final Model simulatedModel;

  @override
  _DockingBayGridState createState() => _DockingBayGridState();
}

class _DockingBayGridState extends State<DockingBayGrid> {
  @override
  Widget build(BuildContext context) {
    List<DockingBayEntry> cardList = [];

    this.widget.warehouseUser.parentWarehouse.loadingBays.forEach((bay) {
      DockingBayEntry card = new DockingBayEntry(
        dockingBay: bay,
        simulatedModel: this.widget.simulatedModel,
      );
      cardList.add(card);
    });

    return Expanded(
        child: GridView.count(
            physics: ScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            children: cardList));
  }
}
